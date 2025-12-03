#?o
if [[ "$UID" == "0" ]] 2>/dev/null; then
	endletter="#"
else
	endletter="$"
fi
shortpath=$(printf "%s" "$PWD" | sed "s|^$HOME|~|")
printf "\001\e[1;34m\002$USER@$(hostname);\001\e[1;33m\002$shortpath\001\e[0m\002$endletter "
