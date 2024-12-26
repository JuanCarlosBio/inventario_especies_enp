#!/usr/bin/env python

import os

# Define the target directory
target_dir = 'html_enp'

# Define the specific order for some directories
ordered_dirs = [
    'reserva_natural_integral',
    'reserva_natural_especial',
    'parque_natural',
    'parque_rural',
    'monumento_natural',
    'paisaje_protegido',
    'sitio_de_interes_cientifico'
]

# Start a dictionary to store directories and their files
dir_dict = {}

# Traverse the target directory and categorize files by directories
for root, dirs, files in os.walk(target_dir):
    # Get the relative directory path from target_dir
    rel_dir = os.path.relpath(root, target_dir)
    
    # Skip the root directory itself (.)
    if rel_dir != ".":
        if rel_dir not in dir_dict:
            dir_dict[rel_dir] = []

    # Add files to the respective directory list
    for file in files:
        dir_dict[rel_dir].append(os.path.join(rel_dir, file))

# Split directories into ordered and default categories
ordered_files = {dir: dir_dict[dir] for dir in ordered_dirs if dir in dir_dict}
default_files = {dir: dir_dict[dir] for dir in dir_dict if dir not in ordered_dirs}

# Sort the files in each ordered directory in ascending order
for directory in ordered_files:
    ordered_files[directory].sort()  # Sort the files alphabetically (ascending)

with open('index.html', 'w') as f:
    f.write("<!DOCTYPE html>\n<html lang='en'>\n<head>\n<meta charset='UTF-8'>\n<title>File Index</title>\n")
    f.write("<style>\n")
    f.write("    .dir { font-weight: bold; cursor: pointer; margin-top: 10px; }\n")
    f.write("    .files { display: none; margin-left: 20px; }\n")
    f.write("    .file { margin: 5px 0; }\n")
    f.write("</style>\n")
    f.write("</head>\n<body>\n<h1>File Index</h1>\n")

    # Function to write a directory and its files
    def write_directory_section(f, directory, files):
        f.write(f"<div class='dir' onclick='toggleFiles(\"{directory}\")'>{directory}</div>\n")
        f.write(f"<div id='{directory}' class='files'>\n")
        for file in files:
            f.write(f"<div class='file'><a href='{target_dir}/{file}'>{file}</a></div>\n")
        f.write("</div>\n")

    # Write ordered directories first
    f.write("<h2><u>Tablas con los inventarios de especies observadas en la isla de Gran Canaria</u></h2>\n")
    for directory, files in ordered_files.items():
        write_directory_section(f, directory, files)

    f.write("<script>\n")
    f.write("    function toggleFiles(directory) {\n")
    f.write("        var filesDiv = document.getElementById(directory);\n")
    f.write("        if (filesDiv.style.display === 'none' || filesDiv.style.display === '') {\n")
    f.write("            filesDiv.style.display = 'block';\n")
    f.write("        } else {\n")
    f.write("            filesDiv.style.display = 'none';\n")
    f.write("        }\n")
    f.write("    }\n")
    f.write("</script>\n")
    f.write("</body>\n</html>")

    
    f.write("<footer style='text-align: left; margin-top: 20px; font-size: small; color: gray;'>")
    f.write("   <p>Sitio desarrollado por <a href='https://juancarlosbio.github.io/juancarlos_portfolio_esp/'>Juan Carlos García Estupiñán</a></p>")
    f.write("</footer>")
