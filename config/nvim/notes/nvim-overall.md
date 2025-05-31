# Using Neovim 

Let's check the verion we're in 
```lua
:version
NVIM v0.11.0-dev-608+g9d74dc3ac
Build type: RelWithDebInfo
LuaJIT 2.1.1720049189
```

## Core plugins

Following are the list of core plugins we load by default

`alpha.lua` : The initial dashboard for Neovim -- Customized
`autocompletion.lua`: Use the `coq` plugin for code auto completion
`bufferline.lua`: A tab line, and allow moving across buffers
`chatgpt.lua`: ChatGPT integration <leader>-cgc and :ChatGPT <TAB>
`colortheme.lua`: Color theme Solarized Osaka 
`copilot-chat.lua`: GitHub Copilot integration, Accept suggestions with <C-l>
`chatgpt.lua`: ChatGPT integration
`indent-blankline.lua`: Indentation vertical line on the left in the Editor
`nvim-lspconfig.lua`: Language Server Protocol integration for Rust, Go and Python3
`lualine.lua`: Colors for Lua
`misc.lua`: Miscellaneous plugins including LazyGit <leader>-lg and  which-key <leader> 
`oil.lua`: A File Explorer on a side with <leader>-e or in the front with <leader>-w
`ollama.lua`: Make queries to Ollama LLMs
`telescope.lua`: Fuzzy Finder for Files <leader>-sg , <leader>-/ , <leader>-? , <leader>-s then select
`treesitter.lua`: Syntax highlighting and indentation based on language 
`mini.lua`: Plugin for changing text with brackets, quotes, etc
`markdown-preview` : Markdown format and highlight
`avante`: AI driven code assistant using OpenAI and Copilot 


Once done run `:checkhealth`

## Commonly used 

### File Management using `Oil`

Fhortcut: <leader>-e  or <leader>-E or `-` 
Regular File Management activity  with keys ( inside the float ) 

`g?`  Show default keymaps

 `       :cd to the current oil directory
 ~       :cd to the current oil directory { scope = "tab" }
 gs      Change the sort order
 q       Close oil and restore original buffer
 g\      Jump to and from the trash for the current directory
 -       Navigate to the parent path
 _       Open oil in Neovim's current working directory
 <CR>    Open the entry under the cursor
 gx      Open the entry under the cursor in an external program
 <C-l>   Refresh current directory list
 g?      Show default keymaps
 g.      Toggle hidden files and directories

`g` will lead you to the `which-key` page and show you the compbinations

### Language related

Some of the most commenly used language related ones are:

- rust-analyzer: Same as VSCode but extremely useful
- gopls: Go language server
- pyright: Python language server
- markdown: Markdown language server

### Version Control


`git` is a best version control tool that has come about after many years. 
It is a distributed version control system that allows you to keep track
of changes in your code and collaborate with others.

A UI Application called `LazyGit` can be inoked and used within `Neovim` primarily 
for version control using `git`


### Search File names, File content etc etc

`Telescope` is a fuzzy finder that allows you to search for files, file content,
To get a list of commands available in `Telescope`, try `:Telescope builtin`

Keys to most commonly used:
- <leader>-sf : Search for files, Find files based on their names
- <leader>-sg : Search for files, Find files based on their content -- live grep
- <leader>-s/ : Search open files in the buffers for a pattern -- live grep
- <leader>-/ : Search for a pattern in the current file

There are `git` related commands n `Telescope` but please use `LazyGit` instead


### Autocompletion with COQ
`coq` is a code autocompletion plugin that allows you to get suggestions for code
completion. It is a very powerful plugin that allows you suggestions that do tie
in with GitHub Copilot and Analytics and Syntax checkers

#### Copilot

- Copolit: 
  - <C-l> : Accept suggestion from Copilot


#### ChatGPT

- ChatGPT:[Keys](https://github.com/jackMort/ChatGPT.nvim)
  - <leader>-cg : ChatGPT Edit with instructions
  - <leader>-cga : ChatGPT act as
  - <leader>-cgc : ChatGPT complete code
  - <leader>-cgo : Optimize Code
  - <leader>-cgs : ChatGPT Summarize
  - <leader>-cgx : ChatGPT Explain the Code
  - <leader>-cgb : ChatGPT fix bugs
  - <leader>-cggc : ChatGPT Grammar Correction

#### Ollama 

- Ollama:
  - <leader>-oo: Ollama Query Main
  - <leader>-os: Ollama Summarize

#### Mini

[MINI.NVIM](https://github.com/echasnovski/mini.nvim?tab=readme-ov-file)

"Swiss Army knife" among Neovim plugins: it has many different independent tools 
(modules) suitable for most common tasks.

'mini.nvim' contains many modules which is slightly daunting at first. All of them 
can be used independently, one at a time. For easier exploration, here they are presented 
in groups based on module's primary functionality (although some modules can fit in 
several groups).



##### Editing

These modules improve your text editing experience. Start with 'mini.ai', 'mini.operators', and 'mini.surround'.

| Module          | Description                           | Overview                             | Details                              |
|-----------------|---------------------------------------|--------------------------------------|--------------------------------------|
| mini.ai         | Extend and create `a`/`i` textobjects | [README](readmes/mini-ai.md)         | [Help file](doc/mini-ai.txt)         |
| mini.align      | Align text interactively              | [README](readmes/mini-align.md)      | [Help file](doc/mini-align.txt)      |
| mini.comment    | Comment lines                         | [README](readmes/mini-comment.md)    | [Help file](doc/mini-comment.txt)    |
| mini.completion | Completion and signature help         | [README](readmes/mini-completion.md) | [Help file](doc/mini-completion.txt) |
| mini.keymap     | Special key mappings                  | [README](readmes/mini-keymap.md)     | [Help file](doc/mini-keymap.txt)     |
| mini.move       | Move any selection in any direction   | [README](readmes/mini-move.md)       | [Help file](doc/mini-move.txt)       |
| mini.operators  | Text edit operators                   | [README](readmes/mini-operators.md)  | [Help file](doc/mini-operators.txt)  |
| mini.pairs      | Autopairs                             | [README](readmes/mini-pairs.md)      | [Help file](doc/mini-pairs.txt)      |
| mini.snippets   | Manage and expand snippets            | [README](readmes/mini-snippets.md)   | [Help file](doc/mini-snippets.txt)   |
| mini.splitjoin  | Split and join arguments              | [README](readmes/mini-splitjoin.md)  | [Help file](doc/mini-splitjoin.txt)  |
| mini.surround   | Surround actions                      | [README](readmes/mini-surround.md)   | [Help file](doc/mini-surround.txt)   |


##### Workflow

These modules improve your general workflow. Start with 'mini.bracketed', 'mini.files', and 'mini.pick'.

| Module         | Description                              | Overview                            | Details                             |
|----------------|------------------------------------------|-------------------------------------|-------------------------------------|
| mini.basics    | Common configuration presets             | [README](readmes/mini-basics.md)    | [Help file](doc/mini-basics.txt)    |
| mini.bracketed | Go forward/backward with square brackets | [README](readmes/mini-bracketed.md) | [Help file](doc/mini-bracketed.txt) |
| mini.bufremove | Remove buffers                           | [README](readmes/mini-bufremove.md) | [Help file](doc/mini-bufremove.txt) |
| mini.clue      | Show next key clues                      | [README](readmes/mini-clue.md)      | [Help file](doc/mini-clue.txt)      |
| mini.deps      | Plugin manager                           | [README](readmes/mini-deps.md)      | [Help file](doc/mini-deps.txt)      |
| mini.diff      | Work with diff hunks                     | [README](readmes/mini-diff.md)      | [Help file](doc/mini-diff.txt)      |
| mini.extra     | Extra 'mini.nvim' functionality          | [README](readmes/mini-extra.md)     | [Help file](doc/mini-extra.txt)     |
| mini.files     | Navigate and manipulate file system      | [README](readmes/mini-files.md)     | [Help file](doc/mini-files.txt)     |
| mini.git       | Git integration                          | [README](readmes/mini-git.md)       | [Help file](doc/mini-git.txt)       |
| mini.jump      | Jump to next/previous single character   | [README](readmes/mini-jump.md)      | [Help file](doc/mini-jump.txt)      |
| mini.jump2d    | Jump within visible lines                | [README](readmes/mini-jump2d.md)    | [Help file](doc/mini-jump2d.txt)    |
| mini.misc      | Miscellaneous functions                  | [README](readmes/mini-misc.md)      | [Help file](doc/mini-misc.txt)      |
| mini.pick      | Pick anything                            | [README](readmes/mini-pick.md)      | [Help file](doc/mini-pick.txt)      |
| mini.sessions  | Session management                       | [README](readmes/mini-sessions.md)  | [Help file](doc/mini-sessions.txt)  |
| mini.visits    | Track and reuse file system visits       | [README](readmes/mini-visits.md)    | [Help file](doc/mini-visits.txt)    |


##### Appearance

These modules improve your Neovim appearance. Start with 'mini.hues', 'mini.icons', and 'mini.statusline'.

| Module           | Description                          | Overview                              | Details                               |
|------------------|--------------------------------------|---------------------------------------|---------------------------------------|
| mini.animate     | Animate common Neovim actions        | [README](readmes/mini-animate.md)     | [Help file](doc/mini-animate.txt)     |
| mini.base16      | Base16 colorscheme creation          | [README](readmes/mini-base16.md)      | [Help file](doc/mini-base16.txt)      |
| mini.colors      | Tweak and save any color scheme      | [README](readmes/mini-colors.md)      | [Help file](doc/mini-colors.txt)      |
| mini.cursorword  | Autohighlight word under cursor      | [README](readmes/mini-cursorword.md)  | [Help file](doc/mini-cursorword.txt)  |
| mini.hipatterns  | Highlight patterns in text           | [README](readmes/mini-hipatterns.md)  | [Help file](doc/mini-hipatterns.txt)  |
| mini.hues        | Generate configurable color scheme   | [README](readmes/mini-hues.md)        | [Help file](doc/mini-hues.txt)        |
| mini.icons       | Icon provider                        | [README](readmes/mini-icons.md)       | [Help file](doc/mini-icons.txt)       |
| mini.indentscope | Visualize and work with indent scope | [README](readmes/mini-indentscope.md) | [Help file](doc/mini-indentscope.txt) |
| mini.map         | Window with buffer text overview     | [README](readmes/mini-map.md)         | [Help file](doc/mini-map.txt)         |
| mini.notify      | Show notifications                   | [README](readmes/mini-notify.md)      | [Help file](doc/mini-notify.txt)      |
| mini.starter     | Start screen                         | [README](readmes/mini-starter.md)     | [Help file](doc/mini-starter.txt)     |
| mini.statusline  | Statusline                           | [README](readmes/mini-statusline.md)  | [Help file](doc/mini-statusline.txt)  |
| mini.tabline     | Tabline                              | [README](readmes/mini-tabline.md)     | [Help file](doc/mini-tabline.txt)     |
| mini.trailspace  | Trailspace (highlight and remove)    | [README](readmes/mini-trailspace.md)  | [Help file](doc/mini-trailspace.txt)  |

##### Other Miscellaneous

| Module     | Description                | Overview                        | Details                         |
|------------|----------------------------|---------------------------------|---------------------------------|
| mini.doc   | Generate Neovim help files | [README](readmes/mini-doc.md)   | [Help file](doc/mini-doc.txt)   |
| mini.fuzzy | Fuzzy matching             | [README](readmes/mini-fuzzy.md) | [Help file](doc/mini-fuzzy.txt) |
| mini.test  | Test Neovim plugins        | [README](readmes/mini-test.md)  | [Help file](doc/mini-test.txt)  |





## New Ones

Need to review and install [Copilot-Chat](https://github.com/CopilotC-Nvim/CopilotChat.nvim)
works to some extent but `Copilot` itself is not working well in the new 
Neovim versions

Switched to `avante` temporarily


## Revisions needed 

`:checkhealth` will denote all teh deprecated items and Warnings!! 

As of writing this document, 

vim.deprecated: require("vim.deprecated.health").check()

- WARNING vim.tbl_flatten is deprecated. Feature will be removed in Nvim 0.13
  - ADVICE:
    - use vim.iter(…):flatten():totable() instead.

- ⚠️ WARNING vim.validate is deprecated. Feature will be removed in Nvim 1.0
  - ADVICE:
    - use vim.validate(name, value, validator, optional_or_msg) instead.
