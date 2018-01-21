#!/usr/bin/env sh
set -e

TOOLS=./build/tools/Release
FILES=./examples/cifar10_xnor
INFO=/H/Caffe_Log/caffe_info
LOGS=/H/Caffe_Log/log

GLOG_logtostderr=0 \
GLOG_log_dir=$INFO \
$TOOLS/caffe.exe time \
-model $FILES/cifar10_full.proto \
-weights $FILES/cifar10_xnor_iter_40000.caffemodel -gpu 0 -iterations 1000 > $LOGS/cifar10xnor_bench.log 2>&1 $@