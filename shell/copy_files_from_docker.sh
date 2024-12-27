#!/usr/bin/env bash

## Para añadir el nombre usar la opción de docker --name
## Ejemplo docker --name my_specific_name -it virtual_container
container_name=my_docker_venv

sourcename_files=$(cat metadata/metadatos_espacios.csv | \
    cut -d "," -f 3,4 | \
    grep -v sourcename | \
    awk -F ',' '{print $2","$1}' |
    tr " " "_" | \
    tr "[:upper:]" "[:lower:]" | \
    sed 's/\,c\-/\/C\-/' | \
    sed 'y/áéíóúñ/aeioun/') 
 
 
for file in $(echo $sourcename_files);do

    path_local=$(echo "$file" | \
        sed 's/\/C-[0-9]\{2\}[^ ]*//g')

    docker cp \
        ${container_name}:/app/html_enp/$file.html \
        html_enp/${path_local}/
done

docker cp ${container_name}:/app/index.html .