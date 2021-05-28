
#!/usr/bin/env bash

mkdir "webp"
rootdir=$(pwd)
dirs=$(ls)
for dir in $dirs
do
  cd $rootdir/$dir
  rm *大门.jpg
  images=$(ls *.{png,jpg})
  for image in $images
  do
    cwebp $image -q 90 -o $rootdir/webp/$dir-${image%.*}.webp
  done
done
