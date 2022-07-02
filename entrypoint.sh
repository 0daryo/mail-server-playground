#!/bin/bash

postfix start

# Postfixは/var/spool/postfixにchrootするので、
# 名前解決に際して、/etc/resolv.confではなく/var/spool/postfix/etc/resolv.confを見に行く。
# 従って、/etc/resolv.confをコピーする。
cp /etc/resolv.conf /var/spool/postfix/etc/resolv.conf

chown root:root /etc/postfix/sasl_passwd
postmap /etc/postfix/sasl_passwd

postfix reload

tail -f /dev/null
