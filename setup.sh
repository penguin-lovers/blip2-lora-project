# #!/bin/bash

# set -e  # 에러 발생 시 스크립트 중단

# echo "✅ [1/5] 시스템 패키지 설치 중..."
# sudo apt update && sudo apt install -y unzip git wget

# echo "✅ [2/5] pip 최신화 및 필수 툴 설치..."
# pip install --upgrade pip setuptools wheel

# echo "✅ [3/5] Python 라이브러리 설치 중..."
# pip install -r requirements.txt --progress-bar on

# echo "✅ [4/5] 모델 캐시 초기화 (선택적)..."
# rm -rf ~/.cache/huggingface/hub/models--Salesforce--blip2-flan-t5-xl || true

# echo "✅ [5/5] 학습 실행 (train.py)..."
# python train.py

#!/bin/bash

echo "✅ [1/4] 시스템 패키지 설치 중..."
sudo apt update && sudo apt install -y unzip git wget

echo "✅ [2/4] Python 라이브러리 설치 중..."
pip install -r requirements.txt

echo "✅ [3/4] 모델 캐시 초기화 (선택적)..."
rm -rf ~/.cache/huggingface/hub/models--Salesforce--blip2-flan-t5-xl

echo "✅ [4/4] 학습 실행 (train.py)..."
python train.py
