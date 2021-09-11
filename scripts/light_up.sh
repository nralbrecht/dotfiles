#!/usr/bin/env zsh
zmodload zsh/mathfunc

if [[ floor(`light`) -le 9 ]]; then
	light -A 1;
else
	light -A 5;
fi