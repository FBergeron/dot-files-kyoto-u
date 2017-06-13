HOSTNAME=`hostname`

if [[ "$HOSTNAME" == baracuda1* ]]; then
    export CUDA_HOME="/usr/local/cuda"
    export PATH="/usr/local/cuda/bin:$PATH"
    export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
    export LIBRARY_PATH=/usr/local/cuda/lib64:$LIBRARY_PATH 
    export CPATH=/usr/local/cuda/include:$CPATH

    export LD_LIBRARY_PATH=~/.cudnn/active/cuda/lib64:$LD_LIBRARY_PATH
    export CPATH=~/.cudnn/active/cuda/include:$CPATH
    export LIBRARY_PATH=~/.cudnn/active/cuda/lib64:$LIBRARY_PATH
fi

if [[ "$HOSTNAME" == moss1* || "$HOSTNAME" == baracuda* ]]; then
     #  export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
     export CUDA_HOME="/usr/local/cuda"
     export PATH="$PATH:/usr/local/cuda/bin"
     export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
     export LIBRARY_PATH=/usr/local/cuda/lib64:$LIBRARY_PATH
     export CPATH=/usr/local/cuda/include:$CPATH
     export LD_LIBRARY_PATH=~/.cudnn/active/cuda/lib64:$LD_LIBRARY_PATH
     export CPATH=~/.cudnn/active/cuda/include:$CPATH
     export LIBRARY_PATH=~/.cudnn/active/cuda/lib64:$LIBRARY_PATH
else
     export PATH=/orange/brew/data/bin:$PATH
fi
 
export PATH=/home/fabien/bin:$PATH

export http_proxy="http://proxy.kuins.net:8080"
export https_proxy="http://proxy.kuins.net:8080"
export HTTP_proxy="http://proxy.kuins.net:8080"
export HTTPS_proxy="http://proxy.kuins.net:8080"
export ftp_proxy="http://proxy.kuins.net:8080"
export FTP_PROXY="http://proxy.kuins.net:8080"
export EDITOR=vim
export LANG=en_US.UTF-8

export PERL5LIB=$HOME/usr/lib/perl

export PYTHONIOENCODING=UTF-8
