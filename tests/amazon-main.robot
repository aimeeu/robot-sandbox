*** Settings ***
Documentation  This is basic info about the whole suite


# to run:  pybot -d results <file name>

*** Variables ***
${URL}      http://www.amazon.com
${BROWSER}    Chrome


*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke