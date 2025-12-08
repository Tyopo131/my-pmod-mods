#? 4
jobcount_stopped="$(jobs -sp | wc -l)"
if ! (( jobcount_stopped == 0 )); then
	printf "%s%d; " "-" "$jobcount_stopped"
fi
