#!/bin/bash

# Script to run efsbeat in foreground with the same path settings that
# the init script / systemd unit file would do.

/usr/share/efsbeat/bin/efsbeat \
  -path.home /usr/share/efsbeat \
  -path.config /etc/efsbeat \
  -path.data /var/lib/efsbeat \
  -path.logs /var/log/efsbeat \
  $@
