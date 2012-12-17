#!/usr/bin/env sh
#
# Ruby の each_cons と似たようなことをする
#
# $ cat <<A | ./tools/each_cons.sh 2
# a
# b
# c
# A
# a b
# b c
#
# -p option:
# $ cat <<A | ./tools/each_cons.sh -p 2
# a
# b
# c
# A
# a b
# b c
# c



if [ $# -eq 0 ]; then 

  cat <<EOF 1>&2
Usage: $0 [-p] N
EOF

  exit 1
fi

OPTS=(`getopt "p:" "$*"`)
P=${OPTS[0]}
N=${OPTS[1]}

BUF=()
while read a; do
  BUF+=("$a")
  if [ $N -eq ${#BUF[@]} ]; then
    echo "${BUF[@]}"
    unset BUF[0]
    BUF=(${BUF[@]})
  fi
done

if [[ "$P" = "-p" ]]; then
  while [ ${#BUF[@]} -ne 0 ]; do
    echo $BUF
    unset BUF[0]
    BUF=(${BUF[@]})
  done
fi
