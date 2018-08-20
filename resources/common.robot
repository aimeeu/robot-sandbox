*** Settings ***
Documentation  These are keywords common to all web tests
Library  SeleniumLibrary
Resource  variables.robot


*** Keywords ***
Begin Web Test
    Open Browser   about:blank  ${BROWSER}
    # maximize browser window

End Web Test
    close browser

Insert Test Data
    log  insert data before the suite of tests is executed

Clean Up Test Data
    log  remove test data after suite of tests finishes executing


