#!/bin/sh

inotifywait -m -r ~/Projetos/notes/ |
    while read path action file; do
	    cd ~/Projetos/notes/ && git add . && git commit -m 'autocommit on change' 
    done
