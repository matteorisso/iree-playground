#!/bin/bash

iree-run-module \
    --module=prog.vmfb \
    --input="3x5xf32=[[0 1 2 3 4] [5 6 7 8 9] [10 11 12 13 14]]" \