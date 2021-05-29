#!/bin/bash

# Entrypoint for current user id from documentation
# <https://github.com/RHsyseng/container-rhel-examples/>

if ! whoami &>/dev/null; then
	if [ -w /etc/passwd ]; then
		echo "${USER_NAME:-default}:x:$(id -u):0:${USER_NAME:-default} user:${HOME}:/sbin/nologin" >>/etc/passwd
	fi
fi

exec "$@"
