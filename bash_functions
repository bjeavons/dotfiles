#!/usr/bin sh

function findfunc {
  grep -rn "function $1(" *| grep -vP "tags|patch$"| awk -F':' '{print $1,$2}' |
  while read FILE LINE
  do
vim +${LINE} ${FILE}
  done
}

function udate() {
  date -r${1}
}

function unixdate() {
  date +%s
}
