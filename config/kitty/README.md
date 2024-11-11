# Kitty Confs

My personal configuration for the terminal emulator [Kitty](https://sw.kovidgoyal.net/kitty/). 
Reload changes with `ctrl+shift+f5`. :smile:

## What's it about?

Simple as that, these are my local Kitty config files. 
Keep in mind these are the configurations I feel comfortable with and they may not suits your personal need. Further, I work with a Mac. 

### Me

I'm [Antonio Pastorino](https://github.com/andou) and I am a web developer / backend engineer. I usually work a lot with the terminal and since you are reading this stuff, I'll assume the very same for you.

For ages I was comfy using [iTerm2](https://iterm2.com/). I mean, really, for ages. Then, I realized that iTerm2 was a performance bottleneck. I think the turning point was the switch to Big Sur, but I'm not sure about that.

So, something as cathartic as change your job, I've decided to switch to another terminal emulator, searching for a solution fast, configurable, appealing and developer friendly. Kitty was a good tradeoff.

## How can I install it?

Really, are you sure? 

Yes? Ok, then, assuming you are on Mac, you have _kitty_ and _git_ installed:

```
$ cd ~/.config/kitty/
$ git init
$ git remote add origin git@github.com:andou/kitty-conf.git
$ git fetch -pv
$ git reset --hard origin/master
```

Then, reload your configurations with `ctrl+shift+f5`, and you are on the go.

These configurations may change from time to time. If you need to get updates if they ever come just do:

```
$ cd ~/.config/kitty/
$ git pull origin master
```


## Changes from the defaults

Below are the changes I made.

### Mappings

Included from `mappings.conf`.

```
map cmd+alt+down neighboring_window down
map cmd+alt+up neighboring_window up
map cmd+alt+left neighboring_window left
map cmd+alt+right neighboring_window right
map cmd+left previous_tab
map cmd+right next_tab
```

### Layouts

Included from `layouts.conf`.

```
enabled_layouts grid 
```

### Theme

Included from `theme.conf`.

```
## Taking inspiration from https://github.com/dexpota/kitty-themes/blob/master/themes/Spacedust.conf
background            #0a1e24
### This is the bash matrix like color I've modified 
foreground            #91d283
cursor                #708183
### Made the selection more readable imho
selection_background  #0d68ac
color0                #6e5246
color8                #674c31
color1                #e35a00
color9                #ff8a39
color2                #5cab96
color10               #adcab8
color3                #e3cd7b
color11               #ffc777
### Having the color 4 too dark for a blackish theme like this represents an issue for tools like exa using it for folders
color4                #1397ff
color12               #67a0cd
color5                #e35a00
color13               #ff8a39
color6                #06afc7
color14               #83a6b3
color7                #f0f1ce
color15               #fefff0
selection_foreground #0a1e24
```

Just for reference, here is a preview.

[![Schermata-2022-03-14-alle-14-41-40.png](https://i.postimg.cc/bwqp0MpP/Schermata-2022-03-14-alle-14-41-40.png)](https://postimg.cc/7ftFwK5t)


## Quick shortcuts refs

Here are some of these shortcut one need but always forget.

- Reload configurations: `ctrl+shift+f5`
- Change tab name: `ctrl+shift+alt+t`
- New tab:  `cmd+t`
- New layout tab:  `cmd+enter`



