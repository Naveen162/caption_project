*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
   Open Browser     browser=chrome
   Maximize Browser Window
   Go To        url=https://phptravels.net/
   Click Element    xpath=//button[@id='ACCOUNT']
   Click Element    link=Customer Login
   Input Text       name=email    180040356ece@gmail.com
   Input Text       name=password   Naveen@9390
   Click Element    xpath=//button[@type='submit']
   Click Element    xpath=//a[@title='flights']
   Click Element    xpath=//label[@class="form-check-label"]
   Input Text   id=autocomplete     BARODA
   Input Text   id=autocomplete2    Mysore Airport
   Input Text   id=departure        01-03-2023
   Click Element    xpath=//i[@class="la la-user form-icon"]
   Click Element    xpath=//i[@class="la la-plus"]
   Click Element    xpath=//i[@class="mdi mdi-search"]
   Sleep    20s