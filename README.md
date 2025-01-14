# What Kind of Visual Tokens Do We Need? Training-Free Visual Token Pruning for Multi-Modal Large Language Models from the Perspective of Graph 
[[paper](https://arxiv.org/abs/2501.02268)]
<img src="https://github.com/jytmelon/G-Prune/blob/main/figures/framework.png" alt="main_image" width="95%">


## TL
We present **G-Prune**, a distinctive token pruning framework for multimodal large language models (MLLMs) that addresses visual token redundancy through graph-based similarity modeling. By building a similarity graph among visual tokens, GraphPrune leverages information flow to identify and retain the most representative tokens. This method strikes a harmonious balance between maintaining model performance and reducing computational cost.


# LLaVA-NeXT Setup and Evaluation

This README provides step-by-step instructions to set up the environment and run evaluations for the G-Prune project.

## News
**[2024/12/10]** Our paper **G-Prune** has been accepted to **AAAI 2025**! 🎉 
**[2024/12/15]** Inference acceleration code for **LLaVA-NeXT** is now released!

## Demos
Here are some example results showcasing the visualization of information flow with varying iterations on LLaVA-NeXT:

<p align="center">
  <div style="display: inline-block; text-align: center; margin-right: 10px;">
    <img src="https://github.com/jytmelon/G-Prune/blob/main/figures/Iteration.png" alt="stitch" width="100%">
  </div>
</p>

Here are some example results showcasing the visualization of pruning outcomes with varying pruning rates on LLaVA-NeXT:

<p align="center">
  <div style="display: inline-block; text-align: center; margin-right: 10px;">
    <img src="https://github.com/jytmelon/G-Prune/blob/main/figures/visualization.png" alt="stitch" width="100%">
  </div>
</p>


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

## Citation

If you find FitPrune useful, please kindly cite our paper. Thank you!

```bibtex
@article{jiang2025kind,
        title={What Kind of Visual Tokens Do We Need? Training-free Visual Token Pruning for Multi-modal Large Language Models from the Perspective of Graph},
        author={Jiang, Yutao and Wu, Qiong and Lin, Wenhao and Yu, Wei and Zhou, Yiyi},
        journal={arXiv preprint arXiv:2501.02268},
        year={2025}
}
```
