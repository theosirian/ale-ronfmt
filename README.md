# ale-ronfmt
Adds ronfmt to ALE fixers.

## Dependencies
- [ALE](https://github.com/dense-analysis/ale)
- [ronfmt](https://github.com/Ristarg/ronfmt)

## Installation

Make sure you have ALE and `ronfmt` installed, otherwise it won't work.

### Vim package management

#### Vim 8 on Unix
```bash
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/theosirian/ale-ronfmt.git ~/.vim/pack/git-plugins/start/ale-ronfmt
```

#### NeoVim on Unix
```bash
mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start
git clone --depth 1 https://github.com/theosirian/ale-ronfmt.git ~/.local/share/nvim/site/pack/git-plugins/start/ale-ronfmt
```

#### Vim 8 on Windows

```bash
# Run these commands in the "Git for Windows" Bash terminal
mkdir -p ~/vimfiles/pack/git-plugins/start
git clone --depth 1 https://github.com/theosirian/ale-ronfmt.git ~/vimfiles/pack/git-plugins/start/ale-ronfmt
```

### Pathogen
```bash
git clone --depth 1 https://github.com/theosirian/ale-ronfmt.git ~/.vim/bundle/ale-ronfmt
```

### Vundle
```
Plugin 'theosirian/ale-ronfmt'
```

### Vim-Plug
```
Plug 'theosirian/ale-ronfmt'
```

## Configuration

The plugin offers two configuration variables that you can set on your `.vimrc`:

To set a different path for `ronfmt` executable use:
```
let g:ale_ron_ronfmt_options='-t 2 -w 120'
```

To modify the flags passed to `ronfmt` use:
```
let g:ale_ron_ronfmt_options='-t 2 -w 120'
```
__Refer to `ronfmt` documentation to see the available options.__

If you prefer to whitelist your linters and fixers for ALE don't forget to add it to the list:
```
let g:ale_fixers = { ..., 'ron': ['ronfmt'], ... }
```
