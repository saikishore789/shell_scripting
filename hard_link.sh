if [ "$(stat -c '%i' file_A)" -eq "$(stat -c '%i' file_B)" ]; then
  echo "file_A and file_B are hard links to the same data."
else
  echo "file_A and file_B are not hard links to the same data."
fi
