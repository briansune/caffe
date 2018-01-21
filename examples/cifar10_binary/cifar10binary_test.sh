#!/usr/bin/env sh
set -e

TOOLS=./build/tools/Release
FILES=./examples/cifar10_binary
INFO=/H/Caffe_Log/caffe_info
LOGS=/H/Caffe_Log/log

GLOG_logtostderr=0 \
GLOG_log_dir=$INFO \
$TOOLS/caffe.exe test \
-model $FILES/cifar10_full.proto \
-weights $FILES/cifar10_finetune_iter_80000.caffemodel -gpu 0 -iterations 1000 > $LOGS/cifar10binary_test.log 2>&1 $@