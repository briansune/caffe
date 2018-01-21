#!/usr/bin/env sh
set -e

TOOLS=./build/tools/Release
FILES=./examples/cifar10_binary
INFO=/H/Caffe_Log/caffe_info
LOGS=/H/Caffe_Log/log

GLOG_logtostderr=0 \
GLOG_log_dir=$INFO \
$TOOLS/caffe.exe train --gpu=0 \
--solver=$FILES/cifar10_full.finetune.solver \
--weights=examples/cifar10/cifar10_full_iter_40000.caffemodel > $LOGS/cifar10binary_train.log 2>&1 $@
