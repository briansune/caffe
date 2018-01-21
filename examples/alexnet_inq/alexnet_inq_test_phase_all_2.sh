#!/usr/bin/env sh
set -e

TOOLS=./build/tools/Release
FILES=./models/bvlc_alexnet_inq
MODELS=/H/Caffe_Model/caffe_inq/bvlc_alexnet_inq
INFO=/H/Caffe_Log/caffe_info
LOGS=/H/Caffe_Log/log

GLOG_logtostderr=0 \
GLOG_log_dir=$INFO \

$TOOLS/caffe.exe test \
-model $FILES/train_val.prototxt \
-weights $MODELS/caffe_alexnet_inq_train_iter_63000.caffemodel -gpu 0 -iterations 10000 > $LOGS/bvlc_reference_alexnet_inq_test_phase_a2.log 2>&1 $@

$TOOLS/caffe.exe test \
-model $FILES/train_val.prototxt \
-weights $MODELS/caffe_alexnet_inq_train_phase_b_iter_63000.caffemodel -gpu 0 -iterations 10000 > $LOGS/bvlc_reference_alexnet_inq_test_phase_b2.log 2>&1 $@

$TOOLS/caffe.exe test \
-model $FILES/train_val.prototxt \
-weights $MODELS/caffe_alexnet_inq_train_phase_c_iter_63000.caffemodel -gpu 0 -iterations 10000 > $LOGS/bvlc_reference_alexnet_inq_test_phase_c2.log 2>&1 $@

$TOOLS/caffe.exe test \
-model $FILES/train_val.prototxt \
-weights $MODELS/caffe_alexnet_inq_train_phase_d_iter_63000.caffemodel -gpu 0 -iterations 10000 > $LOGS/bvlc_reference_alexnet_inq_test_phase_d2.log 2>&1 $@