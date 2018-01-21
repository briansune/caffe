#!/usr/bin/env sh

TOOLS=./build/tools/Release

GLOG_log_dir=examples/cifar10_binary/log $TOOLS/caffe.exe train --gpu=0 \
        --solver=examples/cifar10_binary/cifar10_full.finetune.solver \
            --weights=examples/cifar10/cifar10_full_nobias_iter_40000.caffemodel
