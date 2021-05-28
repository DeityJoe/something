
#!/usr/bin/env bash

rootdir=$(pwd)
dirs=$(ls)
for dir in $dirs
do
  cd $rootdir/$dir
  rm *大门.jpg
  images=$(ls *.{png,jpg})
  for image in $images
  do
    cwebp $image -q 90 -o /root/webp/$dir-${image%.*}.webp
  done
done
