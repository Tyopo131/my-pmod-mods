#?d 50
[[ $PMOD_DRY_RUN -eq "1" ]] && _git_prompt_enabled=1
_git_prompt() {
        if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
                return 0
        fi
        if ! git rev-parse --verify HEAD >/dev/null 2>&1; then
        	printf "\001\e[90m\002[unborn: $(git symbolic-ref --quiet --short HEAD)] \001\e[0m\002"
        	return 0;
        fi
        if [[ "$(git rev-parse --abbrev-ref HEAD)" = "HEAD" ]]; then
                printf "\001\e[31m\002[<DETACHED>@$(git rev-parse --short HEAD)] \001\e[0m\002"
                return 0;
        fi
        printf "[$(git rev-parse --abbrev-ref HEAD)@$(git rev-parse --short HEAD)] "
}
if [[ $PMOD_DRY_RUN -eq "1" ]]; then
        if ! command -v git >/dev/null 2>&1; then
                _git_prompt_enabled=0
                printf "Error: git not found in PATH!\n"
        fi
fi
if ( ! [[ $PMOD_DRY_RUN -eq "1" ]] ) && [[ $_git_prompt_enabled -eq "1" ]]; then
        _git_prompt
fi
unset _git_prompt_dryrun
