
## automatic commit routine

- `https://github.com/gitwatch/gitwatch`
- added to file `sudo vim /usr/local/bin/gitwatch` on line 345: `$GIT push origin master`
- `$HOME/.config/systemd/user/gitwatch@.service`: arquivo de configuração do meu serviço
- `/usr/local/bin/gitwatch`: arquivo do script executado em background.
## terminal setting

- make terminal great again.
    `https://maxim-danilov.github.io/make-linux-terminal-great-again/`

- adds apt package suggestions to zsh terminal.
    `https://ar.al/2018/07/16/adding-command-not-found-apt-package-suggestions-to-zsh/`

## docker

- ##### subir docker mysql
    `docker run --name itaumon-mysql -e MYSQL_ROOT_PASSWORD=123456 --publish 3306:3306 -d mysql:8.0`


## ssh

- ##### generates ssh key
    `ssh-keygen -t rsa -b 2048 <email>`

- ##### copies to the remote server
    `ssh-copy-id -i ~/.ssh/mykey user@host`