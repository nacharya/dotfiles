return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
--    local dashboard = require 'alpha.themes.startify'
    local dashboard = require 'alpha.themes.dashboard'
    local time = os.date("%H:%M")
    local date = os.date("%a, %d %b")

		-- Set the header
---    dashboard.section.header.val = {
---      [[                                                    ]],
---      [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
---      [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
---      [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
---      [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
---      [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
---      [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
---      [[

      dashboard.section.header.val = {

      [[                                                      ]],
      [[                    __   _,--="=--,_   __             ]],
      [[                   /  \."    .-.    "./  \            ]],
      [[                  /  ,/  _   : :   _  \/` \           ]],
      [[                  \  `| /o\  :_:  /o\ |\__/           ]],
      [[                   `-'| :="~` _ `~"=: |               ]],
      [[                      \`     (_)     `/               ]], 
      [[               .-"-.   \      |      /   .-"-.        ]],
      [[          .---{     }--|  /,.-'-.,\  |--{     }---.   ]],
      [[           )  (_)_)_)  \_/`~-===-~`\_/  (_(_(_)  (    ]],
      [[          (                                       )   ]],
      [[           )                                     (    ]],
      [[          '---------------------------------------'   ]],
      [[                                                      ]],

    }

    dashboard.section.buttons.val = {
	dashboard.button("n", "   New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "󰮗   Find file", ":cd $HOME | Telescope find_files<CR>"),
	dashboard.button("x", "   File Explorer", ":Oil --float ~<CR>"),
	dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("c", "   Configuration", ":e ~/.config/nvim/lua/config/keymaps.lua<CR>"),
	dashboard.button("s", "󱘞   Ripgrep", ":Telescope live_grep<CR>"),
	dashboard.button("q", "󰗼   Quit", ":qa<CR>"),
    }

    function centerText(text, width)
	local totalPadding = width - #text
	local leftPadding = math.floor(totalPadding / 2)
	local rightPadding = totalPadding - leftPadding
	return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
    end

    dashboard.section.footer.val = {
	centerText("Kaizoku Ou Ni Ore Wa Naru", 50),
		" ",
		-- centerText("NvimOnMy_Way❤️", 50),
		-- " ",
		centerText(date, 50),
		centerText(time, 50),
	}

    alpha.setup(dashboard.opts)
  end,
}
