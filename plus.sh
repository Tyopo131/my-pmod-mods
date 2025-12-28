#?m
__plus_hashcmp() {
	if [[ $(sha512sum "$@" | sort | uniq | wc -l) -eq 1 ]]; then
		return 0;
	else
		return 1;
	fi
}
__plus_help() {
	printf "+ (plus) help\n-------\n"
	printf "+ or ++: show this help\n"
	printf "+h: compare two files using a sha256 hash\n\tusage: +h [sha512sum args...] file1 file2\n\n"
	printf "+x: mark a file as owner- and group- executable\n\tusage: +x file [files...]\n\n"
}
alias +h="__plus_hashcmp"
alias +="__plus_help"
alias ++="+"
alias +x="chmod u+x,g+x"
