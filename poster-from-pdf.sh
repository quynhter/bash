#!/bin/bash
echo -e "Введите название pdf файла:"
read pdf_file_name
echo -e "Введите номер(-а) страниц(-ы) для нарезки:"
read pages_count
echo -e "Введите кол-во частей для нарезки:"
read parts_count

pdftk $pdf_file_name cat $pages_count output temp.pdf
mutool poster -x $parts_count temp.pdf output.pdf

rm -f temp.pdf
