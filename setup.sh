#!/bin/bash

# ① 시스템 패키지 설치
sudo apt update && sudo apt install -y git wget unzip python3-pip

# ② pip 최신화
pip install --upgrade pip

# ③ PyTorch (CUDA 버전 지정)
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

# ④ 필요한 Python 라이브러리 설치
pip install transformers==4.39.3
pip install peft==0.6.0
pip install peft bitsandbytes accelerate datasets
pip install scikit-learn pandas tqdm

# ⑤ 사용자 안내 메시지
echo "✅ 설치 완료! 'huggingface-cli login'을 입력해 토큰을 등록하세요."
