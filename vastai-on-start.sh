#!/bin/env bash

git clone https://github.com/Stability-AI/generative-models.git

cd generative-models

mkdir checkpoints

wget https://huggingface.co/stabilityai/stable-video-diffusion-img2vid/resolve/main/svd.safetensors?download=true \
    -O checkpoints/svd.safetensors
wget https://huggingface.co/stabilityai/stable-video-diffusion-img2vid-xt/resolve/main/svd_xt.safetensors?download=true \
    -O checkpoints/svd_xt.safetensors

# Export environment variables
env >> /etc/environment