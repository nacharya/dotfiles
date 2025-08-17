#!/bin/bash
#
export OPENAI_API_KEY="${OPENAI_API_KEY}"

function openai_test() {

  curl https://api.openai.com/v1/chat/completions \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer ${OPENAI_API_KEY}" \
    -d '{
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "Hello!"}
      ]
    }'
}

# called looma-nabin in hugging face account under xdatanext
export HUGGINGFACE_KEY="${HUGGINGFACE_KEY}"

# Google Gemini Key
export GEMINI_API_KEY="${GEMINI_API_KEY}"

# test function to see if the key is valid
function gemini_test() {

    curl "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${GEMINI_API_KEY}" \
      -H 'Content-Type: application/json' \
      -X POST \
      -d '{
        "contents": [
          {
            "parts": [
              {
                "text": "Explain how AI works in a few words"
              }
            ]
          }
        ]
      }'

}

export ANTHROPIC_API_KEY="${ANTHROPIC_API_KEY}"


function anthropic_test() {
  curl "https://api.anthropic.com/v1/messages/batches" \
    --header "anthropic-version: 2023-06-01" \
    --header "content-type: application/json" \
    --header "x-api-key: ${ANTHROPIC_API_KEY}" \
    --header "anthropic-beta: message-batches-2024-09-24" \
    --data '{
      "requests": [
        {
          "custom_id": "first-prompt-in-my-batch",
          "params": {
            "model": "claude-3-5-haiku-20241022",
            "max_tokens": 100,
            "messages": [
              {"role": "user", "content": "Hey Claude, tell me a short fun fact about video games!"}
            ]
          }
        },
        {
          "custom_id": "second-prompt-in-my-batch",
          "params": {
            "model": "claude-sonnet-4-20250514",
            "max_tokens": 100,
            "messages": [
              {"role": "user", "content": "Hey Claude, tell me a short fun fact about bees!"}
            ]
          }
        }
      ]
    }'
}

