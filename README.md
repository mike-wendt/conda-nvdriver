# conda-nvdriver
Conda package for NVIDIA driver libraries, needed when doing CPU builds on non-GPU systems

## Conda env for build

```
conda create -n nvdriver
conda install -n nvdriver conda-build anaconda-client conda-verify
source activate nvdriver
conda build nvdriver
```
