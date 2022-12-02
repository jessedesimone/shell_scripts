#!/bin/bash
touch 1_foo_bar.txt
touch 2_foo_bar.txt
for file in ./*; do     #specify all files in current directory
  echo "renaming file " $file
  mv $file ${file//foo/bar}     #replace 'foo' in filename with 'bar'
  echo "new file name = " ${file//foo/bar}
done

for file in ./*; do     #specify all files in current directory
  echo "renaming file " $file
  mv $file ${file//_bar_/_foo_}     #replace '_bar_' in filename with '_foo_'
  echo "new file name = " ${file//_bar_/_foo_}
done

touch 3_foobar.txt
for file in ./*ob*; do    ##specify all files in current directory with specific string
  echo "renaming file " $file
  mv $file ${file//bar/}  #remove 'bar' from filename
  echo "new file name = " ${file//bar/}
done

for file in ./*foo.txt*; do    ##specify all files in current directory with specific string
  echo "renaming file " $file
  mv $file ${file//foo.txt/foo_bar.txt}     #replace 'foo.txt' with 'foo_bar.txt'
  echo "new file name = "echo ${file//foo.txt/foo_bar.txt}
done
