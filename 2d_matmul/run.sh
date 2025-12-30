#!/bin/bash

iree-run-module \
    --module=prog.vmfb \
    --input="2x2xf32=[[1, 2], [3 4]]" \
    --input="2x2xf32=[[5, 6], [7 8]]" \
    --input="2x2xf32=[[0, 0], [0, 0]]"