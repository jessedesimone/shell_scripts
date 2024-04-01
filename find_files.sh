#general commands for finding files using shell script


#list all file names without the extension
#in this example, find all files with jpg extension; list files without the extension
dir_name='file_directory'
find $dir_name -name '*.jpg' -exec basename {} .jpg \;