#? 5
jobcount="$(jobs -rp | wc -l)"
if ! (( jobcount == 0 )); then
	printf -- "+%d; " "$jobcount"
fi
unset jobcount
