#!/bin/bash

openssl rand -hex 32 > ./psk/zabbix-agent.psk
#echo "ZABBIX_AGENT_PSK_ID=$(hostname)-$(hostname -I | awk '{print $1}')" >> .env
echo "ZABBIX_AGENT_PSK_ID=24f827e4d65ffada7ecee12a0c393dfd8ae8c1235997e06258272f13390fb9f9" >> .env

#echo "ZABBIX_AGENT_PSK_ID=$(hostname)-$(hostname -I | awk '{print $1}')"
echo "ZABBIX_AGENT_PSK_ID=24f827e4d65ffada7ecee12a0c393dfd8ae8c1235997e06258272f13390fb9f9"
echo "PSK=$(< ./psk/zabbix-agent.psk)"
