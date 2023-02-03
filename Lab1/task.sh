#!/bin/bash

echo "Переменные оболочки"
ls -lia


textfile_listing=`ls *.txt`
# Переменная содержит имена всех файлов *.txt в текущем каталоге.
echo $textfile_listing

textfile_listing2=$(ls *.txt)   # Альтернативный вариант.
echo $textfile_listing2
# Результат будет тем же самым.