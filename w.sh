
#!/usr/bin/env bash

mkdir "webp"
root=$(pwd)
dirs=$(ls)
for dir in $dirs
do
  cd $dir
  images=$(ls *.{png,jpg})
  for image in $images
  do
    cwebp $image -q 90 -o $root/webp/${image%.*}.webp
  done
  cd ..
done
