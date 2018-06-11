shopt -s extglob
# Environment variables
export PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "
export EDITOR=nano
export PATH="$PATH:~/bin:~/.bin:/root/.gem/ruby/2.2.0/bin:~/.gem/ruby/2.2.0/bin:~/.npm-global/bin"
export NVM_DIR=~/.nvm
export PULSE_LATENCY_MSEC=30
# Aliases
alias update="sudo yay -Syu"
alias search="yay -Ss"
alias standby="sudo pm-suspend"
alias grep="grep --color"
alias get="sudo yay -S"
alias remove="sudo yay -Rs"
alias ls="ls --color"