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
alias dbe='dotenv bundle exec'
alias dber='dotenv bundle exec rspec'
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
alias bp='cd ~/Repos/bitpesa'
alias kc='kubectl'

alias ta='f() { $1 }; tmux attach -t `f`'
alias tl='tmux ls'

alias killjobs="jobs -p | grep -o '[0-9]\{4,5\}' | xargs kill -9"

export NVM_DIR="/Users/graham/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(direnv hook zsh)"
eval "$(rbenv init -)"

if [ -f ~/.secrets_env ]; then
  source ~/.secrets_env
fi

export PATH="$(brew --prefix qt)/bin:$PATH"
export PATH="/Users/graham/Library/Python/3.6/lib/python/site-packages:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

fpath=(/usr/local/share/zsh/site-functions $fpath)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/graham/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/graham/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/graham/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/graham/google-cloud-sdk/completion.zsh.inc'; fi
