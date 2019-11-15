#!/bin/bash
set -eux

# Download and extract MyStem
curl -L https://download.cdn.yandex.net/mystem/mystem-3.1-linux-64bit.tar.gz | tar xvz -C .

# Build RPM
fpm \
    -t rpm \
    -s dir \
    -n mystem \
    -v 3.1 \
    --inputs inputs.list
