
- ##### commit routine
fires command after file gets saved

`inotifywait -q -m -e CLOSE_WRITE --format="git commit -m 'autocommit on change' %w" file.txt | sh`

## terminal setting

- make terminal great again
    `https://maxim-danilov.github.io/make-linux-terminal-great-again/`

- adds apt package suggestions
    `https://ar.al/2018/07/16/adding-command-not-found-apt-package-suggestions-to-zsh/`
d
## docker

- ##### subir docker mysql
    `docker run --name itaumon-mysql -e MYSQL_ROOT_PASSWORD=123456 --publish 3306:3306 -d mysql:8.0`
