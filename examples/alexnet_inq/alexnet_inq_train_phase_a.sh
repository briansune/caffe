#!/usr/bin/env sh
set -e

TOOLS=./build/tools/Release
FILES=./models/bvlc_alexnet_inq
MODELS=/H/Caffe_Model/bvlc_reference_alexnet_inq
INFO=/H/Caffe_Log/caffe_info
LOGS=/H/Caffe_Log/log

GLOG_logtostderr=0 \
GLOG_log_dir=$INFO \
$TOOLS/caffe.exe train --gpu=0 \
--solver=$FILES/solver_phase_a.prototxt \
--weights=$MODELS/bvlc_reference_alexnet_inq.caffemodel > $LOGS/bvlc_alexnet_inq_train_phase_a.log 2>&1 $@
