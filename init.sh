#! /usr/bin/env bash

WORKDIR=$(cd $(dirname $0); pwd)
TMP_DIR_NAME=tmp$(date '+%Y%m%d%H%M%S')

sudo apt-get update
sudo apt-get install -y zsh unzip fontconfig fzf make
sudo apt-get upgrade -y

mkdir -p $WORKDIR/$TMP_DIR_NAME

if [[ ! -d /usr/share/fonts/HackGenNerd ]]; then
  cd $WORKDIR/$TMP_DIR_NAME
  curl -sSLO https://github.com/yuru7/HackGen/releases/download/v2.6.3/HackGenNerd_v2.6.3.zip
  unzip HackGenNerd_v2.6.3.zip
  sudo mv HackGenNerd_v2.6.3 /usr/share/fonts/HackGenNerd
  fc-cache
  cd $WORKDIR
fi

if [[ -z $(command -v starship) ]]; then
  curl -sS https://starship.rs/install.sh | sudo sh -s -- -y
fi

rm -rf $WORKDIR/$TMP_DIR_NAME
