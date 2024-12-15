
# LLaVA-NeXT Setup and Evaluation

This README provides step-by-step instructions to set up the environment and run evaluations for the G-Prune project.

## Environment Setup

Follow these steps to set up the environment:

```bash
cd LLaVA-NeXT
conda create -n gprune-next python=3.10 -y
conda activate gprune-next
pip install --upgrade pip  # Enable PEP 660 support.
pip install -e ".[train]"
pip install lmms-eval
```

## Running Evaluations

To run the evaluations, execute the following script:

```bash
bash /scripts/eval_lmms_eval.sh
```

## Modifying Retention Rate

To adjust the retention rate or related parameters, modify line 239 in the following file:

```
/llava/model/llava_arch.py
```

