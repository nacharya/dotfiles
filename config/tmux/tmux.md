# tmux pain control

We go through common tmux commands we need to use to control tmux painlessly.
Used to tmux commands a lot but sometimes we forget them. This document is for a quick reminder


## Basic Commands and Keys 

### Some common aliases
```
alias tmls="tmux ls"
alias tmn="tmux new -s"
alias tma="tmux attach-session -t"
alias tmk="tmux kill-session -t"
alias tmrls='ls ~/.local/share/tmux/resurrect/'
```

Start a new tmux session 

```
% tmux new -s <session_name>
% tmn <session_name>
```

Get a list of current running sessions
```
% tmux ls
% tmls
```

Attach to a running session
```
% tmux attach-session -t <session_name>
% tma <session_name>
```

Kill a session
```
% tmux kill-session -t <session_name>
% tmk <session_name>
```


### Key Bindings

<kbd>Ctrl+a</kbd> is the default leader prefix key in tmux.
<kbd>Ctrl<kbd> + <kbd>a</kbd> then <kbd>?</kbd> - Show help menu with all key bindings

__Note__: For applications like `bash` or `zsh`, you may need to use the prefix key twice,
like `<kbd>Ctrl+a</kbd> <kbd>Ctrl+a</kbd>` to send the command directly to the shell.


