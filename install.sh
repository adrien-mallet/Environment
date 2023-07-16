#!/usr/bin/env zsh

SCRIPT_DIR="${0:A:h}/configurations";

parse_directory()
{
	for file in $1/*(D)
	do
		echo $file;
		if [ -d "$file" ]; then 
			mkdir ~${file#$SCRIPT_DIR}
			parse_directory $file
		else 
			symlink $file
		fi
	done
}

symlink()
{
	ln -sf $1 ~${1#$SCRIPT_DIR};
}

parse_directory $SCRIPT_DIR
