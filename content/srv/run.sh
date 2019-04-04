#!/bin/bash

graphite-manage migrate --noinput
graphite-manage createsuperuser --noinput --username=admin --email=${GRAPHITE_ADMIN_EMAIL:-admin@graphite.host} || true
graphite-build-search-index || true

mkdir -p /var/lib/graphite/whisper
chown -R _graphite:_graphite /var/lib/graphite /var/log/{carbon,graphite}
chown -R root:adm /var/log/apache2

service apache2 start
service carbon-cache start

while (pidof apache2 && pidof -x carbon-cache) >/dev/null; do
	sleep 15
done
