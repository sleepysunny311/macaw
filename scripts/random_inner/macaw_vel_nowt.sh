#!/bin/bash

source env/bin/activate "$(conda shell.bash hook)"
which python

NAME="macaw_vel_randinner_nowt"
LOG_DIR="log/icml_rebuttal/multiseed"
TASK_CONFIG="config/cheetah_vel/40tasks_offline.json"
MACAW_PARAMS="config/alg/standard_rand_inner.json"
OVERRIDES="config/alg/overrides/no_wlinear.json"

./scripts/runner.sh $NAME $LOG_DIR $TASK_CONFIG $MACAW_PARAMS $OVERRIDES 
