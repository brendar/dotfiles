#!/usr/bin/env bash

if [ "$SPIN" ]; then
  cd ~
  sudo chsh -s /bin/bash spin
  sudo apt-get install -y -o DPkg::Lock::Timeout=600 bash-completion
  sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply brendar
fi

