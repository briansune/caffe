#!/usr/bin/env sh
set -e

TOOLS=./build/tools/Release
FILES=./models/bvlc_alexnet_inq
MODELS=/H/Caffe_Model/caffe_inq/bvlc_alexnet_inq
INFO=/H/Caffe_Log/caffe_info
LOGS=/H/Caffe_Log/log

GLOG_logtostderr=0 \
GLOG_log_dir=$INFO \
$TOOLS/caffe.exe train --gpu=0 \
--solver=$FILES/solver_phase_c.prototxt \
--weights=$MODELS/caffe_alexnet_inq_train_phase_b_iter_63000.caffemodel > $LOGS/bvlc_alexnet_inq_train_phase_c.log 2>&1 $@
