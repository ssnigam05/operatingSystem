*** Settings ***
Documentation    These are some files and directory tests
Resource    ../Resources/os.robot

*** Test Cases ***
Create Some Directories
        [Tags]    OperatingSystem

        os.Create the base directory
        os.Create Directory 1
        os.Create Directory 2

Create some text files
        [Tags]      Files
        os.Create file 1
        os.Create file 2
        os.Create file 3

Copy my file
        [Tags]    Copy File
        log    copy file 1 to directory 2
        os.copy my file