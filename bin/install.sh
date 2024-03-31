#!/bin/bash
# 必要なツールのインストール

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y zsh build-essential wget
# sudo apt install -y gdb valgrind

# 日本語表示設定
# sudo apt install -y language-pack-ja-base language-pack-ja
# sudo update-locale LANG=ja_JP.UTF8

# git log の文字化け回避
export LESSCHARSET=utf-8

# git branch を bash 上で表示するために必要(bash)
# wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
# wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# git branch を表示するために必要(zsh)
mkdir ~/.zsh
cd ~/.zsh && \
curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh && \
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash && \
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build

# ログインシェルをzshに
chsh -s /usr/bin/zsh
