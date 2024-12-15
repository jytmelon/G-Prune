# !/bin/bash
accelerate launch --num_processes=8 \
  --main_process_port=29501 \
  --num_machines=1 \
  --gpu_ids='0,1,2,3,4,5,6,7' \
  --mixed_precision=fp16 \
  --dynamo_backend=no \
  -m lmms_eval \
  --model llava \
  --model_args pretrained=lmms-lab/llama3-llava-next-8b,conv_template=llava_llama_3 \
  --tasks textvqa_val \
  --batch_size 1 \
  --log_samples \
  --log_samples_suffix  llava_next\
  --output_path ./logs/gprune
