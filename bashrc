export CLICOLOR=1
export PS1="\[\e[36m\] PROMPT \[\e[0m\]"
alias ll='ls -GFhl' dir='ls -GFhl'
alias start=open
printf "\033]0;`date "+%a %d %b %Y %I:%M %p"`\007"
alias title='printf "\033]0;%s\007"'
# Customize terminal prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#import the colors

cyan=$(tput setaf 6)
yellow=$(tput setaf 3)
magenta=$(tput setaf 5)
reset=$(tput sgr 0)
red=$(tput setaf 1)
green=$(tput setaf 10)

export PS1="\r\n\[$cyan\]\w\n\$(date +%r)\r\n\[$green\]\u@\h|\[$magenta\]\W\[$yellow\]\$(parse_git_branch)\[$megenta\]:\[$reset\]"
export CLICOLOR=1
alias activate="a=$(pwd) && cd && source ~/.env/bin/activate && echo $a"
