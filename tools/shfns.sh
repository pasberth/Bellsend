export PATH=`pwd`/tools/bin:$PATH
export PATH=`pwd`/.vendor/enumerable.sh/bin:$PATH

# Edit Latest
alias el='$EDITOR source/$(latest)'

# Word Count to Latest
alias wcl='rmspaces source/$(latest) | wc -m'
