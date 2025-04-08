DOCKER=docker

DOTENV_IMAGE=img_dotenv
DOTENV_VERSION=latest
DOTENV_CTR=dotenv

DOTENV_HOME=$(shell pwd)
DATAVOL=`pwd`
SRCDIR=$(DOTENV_HOME)
DOTENV_PYTHON= `pwd`/src

all: $(DOTENV_IMAGE)

.PHONY: all

$(DOTENV_IMAGE):
	$(DOCKER) build -t $(DOTENV_IMAGE) -f Dockerfile .

run: $(DATAVOL)
	$(DOCKER) run --rm -tid -p 8800:8800 \
		-v $(DATAVOL):/data \
		-v $(DATAVOL)/config/nvim:/root/.config/nvim \
		--network host \
		--name $(DOTENV_CTR) $(DOTENV_IMAGE)

$(DATAVOL):
	mkdir -p $(DATAVOL)
	mkdir -p $(DATAVOL)/models


ruff:
	ruff check $(DOTENV_PYTHON) 
ruff-fix:
	ruff check --fix $(DOTENV_PYTHON) 


tests:
	./tests/run_tests.sh

stop:
	$(DOCKER) stop $(DOTENV_CTR)
	$(DOCKER) rm $(DOTENV_CTR)

shell:
	$(DOCKER) exec -ti $(DOTENV_CTR) /bin/bash

logs:
	$(DOCKER) logs $(DOTENV_CTR) -f

save:
	$(DOCKER) commit $(DOTENV_CTR) $(DOTENV_IMAGE)

rmi:
	$(DOCKER) rmi $(DOTENV_IMAGE):$(DOTENV_VERSION)

clean:
	rm -rf $(DATAVOL)

# TODO: this needs to chenge for dockerhub
publish:
	@docker tag $(DOTENV_IMAGE):$(DOTENV_VERSION) ghcr.io/looma/$(DOTENV_IMAGE):$(DOTENV_VERSION)
	@docker push ghcr.io/looma/$(DOTENV_IMAGE):$(DOTENV_VERSION)

