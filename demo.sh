mkdir -p /tmp/huggingface
cp /project/flame/yuxiaoq/huggingface/token /tmp/huggingface/
export HF_HOME=/tmp/huggingface

source /home/yuxiaoq/workspace/prime-rl/.venv/bin/activate 
cd /home/yuxiaoq/workspace/prime-rl


export WANDB_API_KEY="315e959a539374dbcc7d86cec33ede7187be943f"
export WANDB_ENTITY=yuxiao98

uv run rl @ configs/POPE/rl.toml \
  --orchestrator.batch-size 8 \
  --wandb.project prime-rl \
  --wandb.name demo \
  --ckpt \
  --output-dir /tmp/prime-rl/demo