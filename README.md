## terminal setting.

- ##### make terminal great again.
    `https://maxim-danilov.github.io/make-linux-terminal-great-again/`

## docker.

- ##### cheatsheet for spinning up a mysql docker.
    `docker run --name itaumon-mysql -e MYSQL_ROOT_PASSWORD=123456 --publish 3306:3306 -d mysql:8.0`


## ssh.

- ##### generates ssh key.
    `ssh-keygen -t rsa -b 2048 <email>`

- ##### copies to the remote server.
    `ssh-copy-id -i ~/.ssh/mykey user@host`

## django with mysql.

- ##### in order for mysqlclient to work properly, and connect to a remote mysql server, the library below is required.
    `sudo apt-get install default-libmysqlclient-dev`

## logging.

- ##### centralize logs distributed across several machines using native rsyslog.
    `thegeekdiary.com/configuring-remote-logging-using-rsyslog-in-centos-rhel/#:~:text=To%20configure%20a%20machine%20to,address%20with%20a%20single%20%40%20sign.`

- ##### enable to receive messages over UDP.

    `$ModLoad imudp.so`
   	`$UDPServerRun 514`

- ##### defining a folder that stores log files by facility.

    `$template DynamicFile,"/var/log/loghost/%HOSTNAME%/%syslogfacility-text%.log"`
    `*.*    -?DynamicFile`

- ##### it may be necessary to add some firewall rules so the logging server can receive events from clients.

    `firewall-cmd --add-port=514/udp --permanent`
    `firewall-cmd --add-port=514/tcp --permanent`
    `firewall-cmd --reload`

- ##### refer to the centralizing machine, within the client, in the following manner.
    `*.info @centralizing_servers_ip_here`

- ##### if you want all events to be sent to the centralizing server.
    `*.* @@centralizing_servers_ip_here`

- ##### set a specific file to be read.
    `https://www.ibm.com/support/pages/use-rsyslog-monitor-log-file-and-generate-syslog-items`