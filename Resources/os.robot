*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

*** Variables ***
${output_directory} =    Outputs
${directory_1} =    first directory
${directory_2} =    second directory
${file_1} =    file_1.txt
${file_2} =    file_2.txt
${file_3} =    file_3.txt

*** Keywords ***
Create the base directory
        log   log file is ${output_directory}
        create directory    ${output_directory}
        should exist    ${output_directory}

Create Directory 1
        ${directory_path} =    join path    ${output_directory}    ${directory_1}
        create directory    ${directory_path}
        should exist    ${directory_path}

Create Directory 2
        ${directory_path} =    join path    ${output_directory}    ${directory_2}
        create directory    ${directory_path}
        should exist    ${directory_path}

Create file 1
        ${file_path} =    join path    ${output_directory}    ${directory_1}    ${file_1}
        create file    ${file_path}
        should exist    ${file_path}

Create file 2
        ${file_path} =    join path    ${output_directory}    ${directory_1}    ${file_2}
        create file    ${file_path}
        should exist    ${file_path}

Create file 3
        ${file_path} =    join path    ${output_directory}    ${directory_2}    ${file_3}
        create file    ${file_path}
        should exist    ${file_path}

copy my file
        ${source_path} =    join path    ${output_directory}    ${directory_1}    ${file_1}
        ${target_path} =    join path    ${output_directory}    ${directory_2}    ${file_1}

        copy file    ${source_path}    ${target_path}

        should exist    ${source_path}
        should exist    ${target_path}