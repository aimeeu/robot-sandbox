*** Settings ***
Documentation  These are the amazon-specific keywords
Library  SeleniumLibrary
Resource  variables.robot

*** Keywords ***
Search for Products
    go to  ${URL}
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox    Ferrari 458
    click button  css=#nav-search > form > div.nav-right > div > input
    wait until page contains  results for "Ferrari 458"

Select Product From Search Results
    click link  xpath=//*[@id="result_1"]/div/div/div/div[2]/div[1]/div[1]/a
    wait until page contains  Back to search results

Add Product to Cart
    click button  xpath=//*[@id="add-to-cart-button"]
    wait until page contains  Proceed to checkout (1 item)

Begin Checkout
    click link  xpath=//*[@id="hlb-ptc-btn-native"]
    page should contain element  id=ap_email
