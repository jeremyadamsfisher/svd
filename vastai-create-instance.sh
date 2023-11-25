#!/usr/bin/env bash

set -e -o pipefail

if [[ $1 == "-m" ]]; then
    INSTANCE_ID=$2
    vastai create instance $INSTANCE_ID \
    --image jeremyadamsfisher1123/stable-diffusion-video \
    --env "-e NGROK_AUTH_TOKEN=$NGROK_AUTH_TOKEN" \
    --disk 100 \
    --ssh \
    --onstart ./vastai-on-start.sh
else
    echo "Usage: vastai-create-instance.sh -m <instance-id>"
fi

