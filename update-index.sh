#!/bin/bash

find cache -mindepth 1 -delete
cp -r input/* cache

dir="cache"

for input_file in $dir/*
do
    output_file="${input_file%.*}_o.jpg"

    convert $input_file -resize 1920x1200 -auto-orient -gravity center input_resized.jpg

    convert -resize 1920x1200! input_resized.jpg -auto-orient -blur 100x100 input_blurred.jpg

    composite -gravity center input_resized.jpg input_blurred.jpg $input_file

    rm input_resized.jpg input_blurred.jpg
done

find cache -type f > index