#!/usr/bin/env sh
set -e

TOOLS=./build/tools/Release
FILES=./models/bvlc_alexnet
MODELS=/H/Caffe_Model/bvlc_reference_alexnet
INFO=/H/Caffe_Log/caffe_info
LOGS=/H/Caffe_Log/log

GLOG_logtostderr=0 \
GLOG_log_dir=$INFO \
$TOOLS/caffe.exe test \
-model $FILES/train_val.prototxt \
-weights $MODELS/bvlc_alexnet.caffemodel -gpu 0 -iterations 1000 > $LOGS/bvlc_reference_alexnet_test.log 2>&1 $@