#!/bin/bash
#
# Maintainer script to merge new upstream version.

# Not using uscan since upstream does not always tag commits

gbp import-orig \
    --download https://github.com/raspberrypi/firmware/archive/master.tar.gz \
    --filter=modules/*
