#! /bin/bash
branch=master
file=$1
prefix=https://github.com/losemyheaven/image-bank/raw/$branch/

file_path=$(readlink -f $file)

file_dir=$(dirname $file_path)

repo_root=$(
	cd $file_dir
	git rev-parse --show-toplevel
	)

relative_path=${file_path#$repo_root/}

echo $prefix$relative_path

target=https://github.com/losemyheaven/image-bank/blob/master/ssh/ssh-D.jpg
#echo $target
