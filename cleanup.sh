#!/bin/bash

# cleanup.sh
# Recursively clean-up code according to a coding style
#
# @author    Jhonjun Dormitorio [JJD]
# @date      2017.05.05
# @updated   2017.05.08
# @requires  cleansrc.sh
#
# @usage     cleanup.sh [dir] [-e list of files or dirs to exclude]
#
#set -x

currentdir="${1:-.}"
[ "${1}" == "-e" ] && currentdir=.
[[ ${1} && ${1} != -e ]] && shift
if [ "${1}" == "-e" ]
then
  shift
  exfiles="${@}"
fi
cd "${currentdir}"

for srcfile in *
do
  dontskip=1
  for efile in ${exfiles}
  do
    if [ "${srcfile}" == "${efile}" ]
    then
      unset dontskip
      echo "Excluding: ${srcfile}"
      break
    fi
  done
  if [ ${dontskip} ]
  then
    if [ -f "${srcfile}" ]
    then
      #echo "Cleaning-up: ${srcfile}"
      ext="${srcfile##*.}"
      echo ${ext} | grep -e "^c$\|^cc$\|^cpp$\|^cxx$\|^h$\|^hh$\|^hpp$\|^hxx$" > /dev/null
      [[ ${?} == 0 ]] && cleansrc.sh "${srcfile}"
    elif [ -d "${srcfile}" ]
    then
      if [ "${exfiles}" ]
      then
        ${0} "${srcfile}" -e ${exfiles}
      else
        ${0} "${srcfile}"
      fi
    fi
  fi
done

#set +x

