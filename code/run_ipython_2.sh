#!/bin/bash

module load cuda/9.0
module load Anaconda3/5.0.1
which python
ip=$(/sbin/ip route get 8.8.8.8 | awk '{print $NF;exit}')
port=$((10000+ $RANDOM % 20000))

echo "Loaded Cuda and Python modules."
echo "Starting ipython notebook ..."
export OMP_NUM_THREADS=2
jupyter notebook --no-browser --ip=$ip --port=$port --log-level='ERROR'

