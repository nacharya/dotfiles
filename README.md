# dotfiles

dot files for commonly used software programs and working environment primarily
around command line and some software programs that have been very useful

## Components

- cloud
  - aws, azure, gcp

- environments
  - git
  - go
  - Python3
  - Rust
  - bash
  - fish

- terminals
  - kitty
  - tmux

- editors
  - neovim
  - VSCode

- browsers
  - chrome
  - firefox
  - arc

## OS Platforms

- Linux ( Ubuntu24.04+, Debian12+ )
- Windows 12 Pro+ with WSLv2
- Mac OSX  ( Sonoma+ )

## Installation

Use the dots scripts attached to install , show and remove the components

```bash
% ./dots --help
./dots < commands > < components >
./dots [ show | install | remove | backup | restore ] [ cloud | base | pkg ]
Commands:
         show
         install
         remove
         backup
         restore
Components:
         cloud
         base

```

## Usage

To install the base packages needed
```bash
% ./dots install pkg
```

To install the base components
```bash
% ./dots install base
```

To create a backup of the base components
```bash
% ./dots backup base
```

To restore the base components
```bash
% ./dots restore base
```

To remove the base components
```bash
% ./dots remove base
```

## Cloud

To setup the basic cloud rc files for AWS, Azure and GCP
```bash
% ./dots install cloud
```
