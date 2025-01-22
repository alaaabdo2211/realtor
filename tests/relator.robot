*** Settings ***
Library    AppiumLibrary
Resource    ../keywords/filter.resource
Resource    ../keywords/search.resource
Resource    ../commom/common.resource
Resource    ../keywords/listing.resource


*** Test Cases ***
# Open My Application
#         common.Open Application

Search for Ottawa Ottawa City and filter result 
    common.Open Real Estate Application
    common.Allow Location Permission
    search.Search for Ottawa
    filter.Click Filter
    filter.Fill Proprties
    filter.Click Search Reault
    filter.Click into result item
    listing.Check Elements with given value
    listing.Print Realtor info
    listing.Get In touch



    

