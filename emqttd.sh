#!/bin/bash
sed -i 's/127.0.0.1/'"$NODE_IP"'/g' /opt/emqttd/etc/vm.args
/opt/emqttd/bin/emqttd start
sleep 5
if [ -z ${MASTER+x} ]; then
    echo '$MASTER' is not set.
else
    /opt/emqttd/bin/emqttd_ctl cluster emqttd@$MASTER;
fi
sleep 10 && tail -f --retry /opt/emqttd/log/*