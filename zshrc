export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

#export JRUBY_OPTS="--1.9 -J-XX:MaxPermSize=128m"

alias cookbook='nocorrect cookbook'
alias go='nocorrect go'
alias role='nocorrect role'
alias spring='nocorrect spring'
alias subl='nocorrect subl'

alias 3t='cd ~/Repos/threetier'
alias be='bundle exec'
alias dbe='dotenv bundle exec'
alias dber='dotenv bundle exec rspec'
alias dfe='cd ~/Repos/dfe'
alias ch='cd ~/Repos/captionhub'
alias c='clear'
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
alias hdeploy='git push heroku master'
alias maps='cd ~/Repos/threetier/secure.mapslegal.co.uk'
alias mine='cd ~/Repos/mine/'
alias kc='kubectl'
alias dc='docker-compose -f ~/Repos/captionhub/scribe_systems/docker-compose/docker-compose.yml'

alias ta='f() { $1 }; tmux attach -t `f`'
alias tl='tmux ls'

alias killjobs="jobs -p | grep -o '[0-9]\{4,5\}' | xargs kill -9"
alias rh='history > /dev/null'

eval "$(direnv hook zsh)"

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

eval $(thefuck --alias)

export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/graham/.sdkman"
[[ -s "/Users/graham/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/graham/.sdkman/bin/sdkman-init.sh"


. /usr/local/opt/asdf/asdf.sh
