#!/bin/bash
tm="$(date -Iseconds)"
#tm="$(date)"
echo ${tm}"ct_boot" >> /var/log/tg.log
curl -s -X POST https://api.telegram.org/bot6305018929:AAEBSJMvWGZ3mLmiDR9f0DfUYUEZpcTPVxg/sendMessage -d chat_id=253629334 -d text=${tm}_ct_boot

