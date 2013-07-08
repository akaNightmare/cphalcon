#! /bin/sh

DIR=$(readlink -enq $(dirname $0))

if [ "$(php -r 'echo substr(PHP_VERSION, 0, 3);')" = "5.5" ]; then
	pecl install apcu
	phpenv config-add "$DIR/apcu.ini"
else
	phpenv config-add "$DIR/apc.ini"
fi
