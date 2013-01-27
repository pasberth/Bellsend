export PATH=`pwd`/tools/bin:$PATH
export PATH=`pwd`/.vendor/enumerable.sh/bin:$PATH

export NOVPREFIX=chapter-01/act-01

# Edit Latest
alias el='$EDITOR source/$NOVPREFIX/$(latest)'

# Word Count to Latest
alias wcl='rmspaces source/$NOVPREFIX/$(latest) | wc -m'
