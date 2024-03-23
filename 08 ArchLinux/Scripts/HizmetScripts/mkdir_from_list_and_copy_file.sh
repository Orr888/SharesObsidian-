#!/bin/bash

# ======================================================== #
#       Скрипт для перемещения файла в новосозданную       #
#                папку с идентичным именем.                #
# ======================================================== #
#   Данный скрипт считывает каждую строку со списком имен  #
#   из файла "list.txt", удаляет последнее расширение,     #
#   если оно имеется, из имени файла для создания папки    #
#   (то есть удаляет все после последней точки), создает   #
#   папку с этим именем, а затем перемещает файл с этим    #
#   именем в эту папку.                                    #
# ======================================================== #

# ======================================================== #
# Сделайте скрипт исполняемым: (chmod +x script.sh)        #
# -------------------------------------------------------- #
# Необходимо в папке с файлами создать файл скрипта        #
# "mkdir_from_list_and_copy_file.sh" и поместит скрипт     #
# в него, затем там же создаем файл "list.txt" и помещаем  #
# в него список с именами файлов. Имена файлов обязательно #
# должны содержать расширения файлов, в нашем случае "mp4" #
# так же могут содержать точки, пробелы и прочие допусти-  #
# мые символы. Каждое название файла должно размещаться    #
# на новой строке. Пустых строк в файле не должно быть.    #
# -------------------------------------------------------- #
# Обратите внимание, что этот скрипт удаляет только        #
# последнее расширение из имени файла. Если в имени файла  #
# есть несколько точек, все, что находится до последней    #
# точки, будет использоваться для создания имени папки.    #
# Например, если имя файла "my.video.mp4", то будет        #
# создана папка "my.video" и файл "my.video.mp4" будет     #
# перемещен в эту папку.                                   #
# -------------------------------------------------------- #
# Для правильной работы скрипта необходимо запустить его   #
# в каталоге с файлами и иметь необходимые разрешения для  #
# создания папок и перемещения файлов.                     #
# -------------------------------------------------------- #
# Возникают проблемы с файлами в названиях которых имеются #
# закрывающие кавычки ")". Названия папок получаются не    #
# полные и по этой причине файлы не перемещаются в них.    #
# Такие файлы остаются в папке не перемещенными а их папки #
# получаются с названием до закрывающей кавычки.           #
# ======================================================== #


# Имя файла со списком
filename="list.txt"

# Проверяем каждую строку в файле
while IFS= read -r line
do
    # Удаляем расширение из имени файла для создания папки
    foldername="${line%.*}"

    # Создаем папку, если она еще не существует
    mkdir -p "$foldername"

    # Перемещаем видео файлы в соответствующую папку
    find . -maxdepth 1 -name "$line" -exec mv {} "$foldername" \;
done < "$filename"
