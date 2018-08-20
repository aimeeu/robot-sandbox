*** Settings ***
Documentation  This is basic info about the whole suite
Resource  ../resources/keywords.robot
Resource  ../resources/common.robot
Suite Setup  Insert Test Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Clean Up Test Data

# to run:  robot -d results <file name>



*** Test Cases ***
User searches for product
    [Documentation]  User searches for a product
    [Tags]  Smoke
    Search for Products

User selects product from search results
    [Documentation]  User selects product from search results
    [Tags]  Smoke
    Select Product From Search Results

User adds product to cart
    [Documentation]  User adds product to cart
    [Tags]  Smoke
    Add Product to Cart

User must sign in to check out
    [Documentation]  User must sign in to check out
    [Tags]  Smoke
    Begin Checkout


