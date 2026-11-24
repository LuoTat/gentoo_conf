# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
alias ls="eza -al  --icons"
alias sync-all="sudo emaint -a sync"
alias update-all="sudo emerge -uDN @world"
alias clean-all="sudo emerge -c"
alias rebuild-all="sudo emerge -e @world"
# export ALL_PROXY="http://127.0.0.1:7890"
