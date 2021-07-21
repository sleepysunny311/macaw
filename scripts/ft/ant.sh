#!/bin/bash

source env/bin/activate "$(conda shell.bash hook)"
which python

# Ant multiseed fine-tuning (from random/online data)
./scripts/runner.sh \
  macaw_ant_iid_ft_seeds_random \
  log/icml_rebuttal/ftr \
  config/ant_dir/50tasks_offline.json \
  config/alg/standard_rand_inner.json \
  config/alg/overrides/ant_ft_seeds_random.json
