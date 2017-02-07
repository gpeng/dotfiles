export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

export JRUBY_OPTS="--1.9 -J-XX:MaxPermSize=128m"

alias cookbook='nocorrect cookbook'
alias go='nocorrect go'
alias role='nocorrect role'
alias spring='nocorrect spring'
alias subl='nocorrect subl'

alias 3t='cd ~/Repos/threetier'
alias be='bundle exec'
alias bj='cd ~/Repos/businessjuice'
alias c='clear'
alias cr='cucumber -f rerun --out cucumber_rerun.txt'
alias cre='cucumber @cucumber_rerun.txt'
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
alias fused='cd ~/Repos/fused4'
alias govuk='cd ~/Repos/govuk'
alias govukdev='cd ~/Repos/govuk/govuk-puppet/development-vm'
alias govukvm='govukdev && vagrant ssh'
alias govlint='bundle exec govuk-lint-ruby --diff --cached --format html --out rubocop-${GIT_COMMIT}.html --format clang app test lib'
alias hdeploy='git push heroku master'
alias maps='cd ~/Repos/threetier/secure.mapslegal.co.uk'
alias mine='cd ~/Repos/mine/'
alias mv-invoice='ls -t ~/Downloads | head -1 | xargs -I % mv -v ~/Downloads/% ~/Documents/Receipts/`date "+%Y-%m-%d-%H:%M:%S"`-%'
alias sal='cd ~/Repos/mine/sendaletterhome.com'

export NVM_DIR="/Users/graham/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(direnv hook zsh)"
eval "$(rbenv init -)"

if [ -f ~/.secrets_env ]; then
  source ~/.secrets_env
fi
