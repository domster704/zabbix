#!/bin/bash

openssl rand -hex 32 > ./psk/zabbix-agent.psk
echo "ZABBIX_AGENT_PSK_ID=$(hostname)-$(hostname -I | awk '{print $1}')" >> .env

echo "ZABBIX_AGENT_PSK_ID=$(hostname)-$(hostname -I | awk '{print $1}')"
echo "PSK=$(< ./psk/zabbix-agent.psk)"
