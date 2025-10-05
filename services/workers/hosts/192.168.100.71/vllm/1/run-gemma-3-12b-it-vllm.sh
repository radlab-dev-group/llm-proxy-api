#!/bin/bash

export CUDA_VISIBLE_DEVICES=1

MODEL_PATH=google/gemma-3-12b-it

vllm serve \
	"${MODEL_PATH}" \
        --port 7001 \
        --host 0.0.0.0 \
        --quantization bitsandbytes \
        --load-format bitsandbytes \
        --max-model-len=4096 \
        --gpu-memory-utilization=0.99
