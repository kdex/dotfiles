[[ -f ~/.bashrc ]] && . ~/.bashrc
# SSH key
if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval $(ssh-agent -s)
	ssh-add
fi
export XDG_CACHE_HOME="/home/kdex/.cache/"
export EDITOR=nano