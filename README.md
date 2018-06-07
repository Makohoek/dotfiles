# Makohoek's dotfiles

This repository is stored in my home folder using the trick described below:
https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

## Installation

```
cd ~/ && curl -Lks https://raw.githubusercontent.com/Makohoek/dotfiles/master/setup.sh | /bin/bash
```

### Submodules
After cloning the repository, we  must initialize the
submodules:
```
git submodule update --init --recursive
```
