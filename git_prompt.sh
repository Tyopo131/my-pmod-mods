#? 50
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        return 0
fi
if ! git rev-parse --verify HEAD >/dev/null 2>&1; then
	printf "\001\e[90m\002[none] \001\e[0m\002"
	return 0;
fi
if [[ "$(git rev-parse --abbrev-ref HEAD)" = "HEAD" ]]; then
        printf "\001\e[31m\002[DETACHED@$(git rev-parse --short HEAD)] \001\e[0m\002"
        return 0;
fi
printf "[$(git rev-parse --abbrev-ref HEAD)] "
