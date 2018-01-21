#!/usr/bin/env sh
set -e

TOOLS=./build/tools/Release
FILES=./models/bvlc_alexnet
MODELS=/H/Caffe_Model/caffe_bnn_xnor/bvlc_alexnet
INFO=/H/Caffe_Log/caffe_info
LOGS=/H/Caffe_Log/log

GLOG_logtostderr=0 \
GLOG_log_dir=$INFO \
$TOOLS/caffe.exe train --solver=$FILES/solver.prototxt -gpu 0 \
--snapshot=$MODELS/caffe_alexnet_train_iter_110000.solverstate > $LOGS/bvlc_alexnet_train.log 2>&1 $@
