if [ -h /path/to/file ]; then
  echo "File is a symbolic link."
else
  echo "File is not a symbolic link."
fi