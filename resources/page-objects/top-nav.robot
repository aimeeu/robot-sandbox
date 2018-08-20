*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary


# to run:  pybot -d results <file name>

*** Variables ***
${URL}      http://www.amazon.com
${BROWSER}    Chrome


*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser   ${URL}  ${BROWSER}
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox    Ferrari 458
    click button  css=#nav-search > form > div.nav-right > div > input
    wait until page contains  results for "Ferrari 458"
    click link  css=#result_2 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a
    wait until page contains  Back to search results
    click button  id=add-to-cart-button
    wait until page contains  Cart subtotal (1 item)
    click link  xpath=//*[@id="hlb-ptc-btn-native"]
    page should contain element  ap_signin1a_pagelet_title
    element text should be  ap_signin1a_pagelet_title Sign In
    close browser