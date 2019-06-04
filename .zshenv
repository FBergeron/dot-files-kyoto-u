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

#
# Trїed to play with brew.
# http://nlp.ist.i.kyoto-u.ac.jp/local/index.php?cmd=read&page=%B7%D7%BB%BB%B5%A1%2F%B4%C9%CD%FD%2F%B6%A6%CD%D1%A5%D7%A5%ED%A5%B0%A5%E9%A5%E0&word=linuxbrew
#
# But I don't really need it for now so I comment it out.
#
# if [[ -f /mnt/orange/ubrew/brew.zsh ]] then
#     source /mnt/orange/ubrew/brew.zsh
# fi
