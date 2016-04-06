#!/bin/sh
#
# emqttd       Startup script for emqttd.
#
# chkconfig: 2345 90 10
# description: emqttd is mqtt broker.

# source function library
#. /etc/rc.d/init.d/functions

# export HOME=/root

start() {
    echo "starting emqttd..."
    /opt/emqttd/bin/emqttd  start
}

stop() {
    echo "stopping emqttd..."
     /opt/emqttd/bin/emqttd stop
}

restart() {
    stop
    start
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    restart)
        restart
        ;;
    *)
        echo $"Usage: $0 {start|stop}"
        RETVAL=2
esac
