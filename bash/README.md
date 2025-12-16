## Env Setup

```
git clone https://github.com/PrimeIntellect-ai/prime-rl.git
cd prime-rl
```

Remove  "flash-attn>=2.8.3", from pyproject.toml

```
uv sync
```


Instead of running 

```
uv pip install "flash-attn-3 @ git+https://github.com/Dao-AILab/flash-attention.git@main#subdirectory=hopper" --no-build-isolation
```

Directly Run

```
uv pip install flash-attn --no-build-isolation
```
