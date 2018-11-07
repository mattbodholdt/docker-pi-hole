#!/bin/sh
if [ -e /etc/dnscrypt-proxy/dnscrypt-proxy.toml ]
then {
	/go/linux-amd64/dnscrypt-proxy -config /etc/dnscrypt-proxy/dnscrypt-proxy.toml &
}
else {
	cp /dnscrypt-proxy.toml /etc/dnscrypt-proxy/dnscrypt-proxy.toml
	/go/linux-amd64/dnscrypt-proxy -config /etc/dnscrypt-proxy/dnscrypt-proxy.toml & 
}
fi

/s6-init
