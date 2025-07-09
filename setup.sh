#!/bin/bash

# 시스템 기본 패키지
sudo apt update && sudo apt install -y git wget unzip python3-pip

# pip 최신화
pip install --upgrade pip

# PyTorch (CUDA 12.1 기준)
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

# 필수 패키지
pip install transformers==4.39.3
pip install peft bitsandbytes accelerate datasets
pip install scikit-learn pandas tqdm

# 안내
echo "✅ 설치 완료! 'huggingface-cli login'을 입력해 토큰을 등록하세요."
