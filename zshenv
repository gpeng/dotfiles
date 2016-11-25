export EDITOR=vim
export AWS_RDS_HOME=/usr/local/aws-rds
export GOPATH=$HOME/Repos/go
export JAVA_HOME=$(/usr/libexec/java_home)

##AWS RDS
export PATH="$AWS_RDS_HOME/bin:$PATH"
export PATH="./bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/usr/local/bin:$PATH"
### Add npm bin to path
export PATH="$PATH:/usr/local/share/npm/bin"
### Add nvm node modules
export PATH="./node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/bin:$PATH"

eval "$(rbenv init -)"
