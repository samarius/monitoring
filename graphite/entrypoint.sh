#!/bin/sh

mkdir -p /var/log/supervisor
mkdir -p /var/log/nginx

/usr/bin/supervisord
