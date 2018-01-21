#!/usr/bin/env sh

TOOLS=./build/tools/Release

GLOG_log_dir=examples/cifar10_xnor/log $TOOLS/caffe.exe train --gpu=0 \
    --solver=examples/cifar10_xnor/cifar10_full.solver
