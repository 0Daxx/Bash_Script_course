#!/usr/bin/bash bash

local file_name=$1
echo "first arg : $1"

validate_file() {

  echo -n "valid file : $([[ -f $1 ]]) " && echo "file exists "
  return 0
  # optional to write explicit return statement , by default it will return the code by last executed command ,
  # which is echo in this case

}
if (validate_file == 0); then
  # extract output into a folder that is
  mkdir temp
  cd temp
  unzip /"$1"
  # ERROR : since file name has white spaces each are considered individual argument
  # unless given in "$1" , WHY this works ??  i guess cuz double quotes tell bash not to interpet escape characters in filepath
  magick -adjoin *jpeg output.pdf

else
  exit 1
fi
