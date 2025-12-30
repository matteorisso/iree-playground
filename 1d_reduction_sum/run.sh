#!/bin/bash

iree-run-module \
    --module=prog.vmfb \
    --input="10xf32=[0 1 2 3 4 5 6 7 8 9]" \