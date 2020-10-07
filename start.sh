#!/usr/bin/env bash
service ssh stop
mkdir -p /var/run/sshd # https://github.com/ansible/ansible-container/issues/141#issuecomment-312399967
echo '[!] Starting ssh server...'
/usr/sbin/sshd -D -e
