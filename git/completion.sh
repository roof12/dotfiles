# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).

# from brew's zsh
zsh_completion=/usr/local/share/zsh/site-functions/git-flow-completion.zsh
bash_completion=/usr/local/etc/bash_completion.d/git-completion.bash

if test -f $zsh_completion
then
  source $zsh_completion
elif test -f $bash_completion
then
  source $bash_completion
  echo Run 'brew install git-flow to fix deprecation error.'
fi
