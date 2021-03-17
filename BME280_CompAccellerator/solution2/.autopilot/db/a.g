#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/chrispy/workspace/FPRock_CmodA735t/BME280_CompAccellerator/solution2/.autopilot/db/a.g.bc ${1+"$@"}
