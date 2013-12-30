#!/bin/sh

add_gitignore ()
{
  echo "#$1.gitignore" >> ~/.gitignore_global
  echo "" >> ~/.gitignore_global
  wget -O - https://raw.github.com/stefanbirkner/gitignore/master/Global/$1.gitignore >>  ~/.gitignore_global
  echo "" >> ~/.gitignore_global
}

add_gitignore Eclipse
add_gitignore JetBrains

git config --global color.ui true
git config --global core.editor vim
git config --global core.excludesfile ~/.gitignore_global
git config --global user.email "mail@stefan-birkner.de"
git config --global user.name "Stefan Birkner"