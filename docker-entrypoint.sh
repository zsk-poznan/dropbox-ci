#!/bin/sh

set -eou pipefail

echo "{\"\":{\"personal\":\"$DROPBOX_KEY\"}}" > /root/.config/dbxcli/auth.json

dbxcli $@