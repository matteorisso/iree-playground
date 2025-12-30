#!/bin/bash

iree-compile \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    prog.mlir \
    -o prog.vmfb
