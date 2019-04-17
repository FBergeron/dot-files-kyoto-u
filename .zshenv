HOSTNAME=`hostname`

if [[ "$HOSTNAME" == moss* || "$HOSTNAME" == baracuda* ]]; then
    export NCCL_ROOT=$HOME
    export CUDA_HOME="/usr/local/cuda"
    export PATH="$CUDA_HOME/bin:$PATH"
    export LD_LIBRARY_PATH=$NCCL_ROOT/lib:~/.cudnn/active/cuda/lib64:$CUDA_HOME/lib64:$LD_LIBRARY_PATH
    export LIBRARY_PATH=$NCCL_ROOT/lib:~/.cudnn/active/cuda/lib64:$CUDA_HOME/lib64:$LIBRARY_PATH
    export CPATH=$NCCL_ROOT/include:~/.cudnn/active/cuda/include:$CUDA_HOME/include:$CPATH
else
    export PATH=/orange/brew/data/bin:$PATH
fi
 
export PATH=$HOME/bin:$PATH

export EDITOR=vim
export LANG=en_US.UTF-8

export PERL5LIB=$HOME/usr/lib/perl

export PYTHONIOENCODING=UTF-8
