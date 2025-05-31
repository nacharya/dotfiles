## Key Bindings

The following key bindings are available for use with `avante.nvim`:

| Key Binding                               | Description                                  |
| ----------------------------------------- | -------------------------------------------- |
| <kbd>Leader</kbd><kbd>a</kbd><kbd>a</kbd> | show sidebar                                 |
| <kbd>Leader</kbd><kbd>a</kbd><kbd>t</kbd> | toggle sidebar visibility                    |
| <kbd>Leader</kbd><kbd>a</kbd><kbd>r</kbd> | refresh sidebar                              |
| <kbd>Leader</kbd><kbd>a</kbd><kbd>f</kbd> | switch sidebar focus                         |
| <kbd>Leader</kbd><kbd>a</kbd><kbd>?</kbd> | select model                                 |
| <kbd>Leader</kbd><kbd>a</kbd><kbd>e</kbd> | edit selected blocks                         |
| <kbd>Leader</kbd><kbd>a</kbd><kbd>S</kbd> | stop current AI request                      |
| <kbd>Leader</kbd><kbd>a</kbd><kbd>h</kbd> | select between chat histories                |
| <kbd>c</kbd><kbd>o</kbd>                  | choose ours                                  |
| <kbd>c</kbd><kbd>t</kbd>                  | choose theirs                                |
| <kbd>c</kbd><kbd>a</kbd>                  | choose all theirs                            |
| <kbd>c</kbd><kbd>0</kbd>                  | choose none                                  |
| <kbd>c</kbd><kbd>b</kbd>                  | choose both                                  |
| <kbd>c</kbd><kbd>c</kbd>                  | choose cursor                                |
| <kbd>]</kbd><kbd>x</kbd>                  | move to previous conflict                    |
| <kbd>[</kbd><kbd>x</kbd>                  | move to next conflict                        |
| <kbd>[</kbd><kbd>[</kbd>                  | jump to previous codeblocks (results window) |
| <kbd>]</kbd><kbd>]</kbd>                  | jump to next codeblocks (results windows)    |

> [!NOTE]
>
> If you are using `lazy.nvim`, then all keymap here will be safely set, meaning if `<leader>aa` is already binded, then avante.nvim won't bind this mapping.
> In this case, user will be responsible for setting up their own. See [notes on keymaps](https://github.com/yetone/avante.nvim/wiki#keymaps-and-api-i-guess) for more details.
