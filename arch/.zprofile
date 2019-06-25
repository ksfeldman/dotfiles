export SSH_AUTH_SOCK=$HOME/.keeagent_socket


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi
