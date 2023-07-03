#! /usr/bin/bash

# echo "entering in the vm"
# vagrant ssh

echo "[UPDATING APT-GET]"
sudo apt-get update

echo "[INSTALLING AWSCLI]"
sudo apt install awscli -y

echo "[INSTALLING LOCALSTACK]"
python3 -m pip install localstack

echo "[CREATING VARIABLES]"

export AWS_ACCESS_KEY_ID="test"
echo "[AWS_ACCESS_KEY_ID variable created]"

export AWS_SECRET_ACCESS_KEY="test"
echo "[AWS_SECRET_ACCESS_KEY variable created]"

export AWS_DEFAULT_REGION="us-east-1"
echo "[AWS_DEFAULT_REGION variable created]"

# echo "setting endpoint"
# aws --endpoint-url=http://localhost:4566 kinesis list-streams

echo "[CONFIGURING AWS PROFILE]"
aws configure --profile default

echo "[CHECKING CONFIGS]"
aws configure list

echo "[INSTALLING AWS LOCAL]"
pip install awscli-local
