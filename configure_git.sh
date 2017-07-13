#!/bin/sh

add_gitignore ()
{
  echo "#$1.gitignore" >> ~/.gitignore_global
  echo "" >> ~/.gitignore_global
  wget -O - https://raw.github.com/stefanbirkner/gitignore/master/Global/$1.gitignore >>  ~/.gitignore_global
  echo "" >> ~/.gitignore_global
}

enable_autocomplete_on_macos ()
{
  if [ "$(uname -s)" == "Darwin" ]
  then
    wget \
      -O ~/git-completion.sh \
      https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    touch ~/.bash_profile
    echo "source ~/git-completion.sh" >> ~/.bash_profile
  fi
}

add_gitignore Eclipse
add_gitignore JetBrains
enable_autocomplete_on_macos

git config --global color.ui true
git config --global core.editor vim
git config --global core.excludesfile ~/.gitignore_global
git config --global push.default current
git config --global user.email "mail@stefan-birkner.de"
git config --global user.name "Stefan Birkner"
