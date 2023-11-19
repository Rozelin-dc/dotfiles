#!/bin/bash
# 必要なツールのインストール

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y build-essential
# sudo apt install -y gdb
# sudo apt install -y valgrind
sudo apt install -y wget

# 日本語表示設定
# sudo apt install -y language-pack-ja-base language-pack-ja
# sudo update-locale LANG=ja_JP.UTF8

# git log の文字化け回避
export LESSCHARSET=utf-8

# git branch を bash 上で表示するために必要
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
