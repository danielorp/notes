inotifywait -e close_write,moved_to,create -m /home/$USER/Projetos/notes/ |
while read -r directory events filename; do
  git add . && git commit -m 'auto commit' && git push origin master
done
