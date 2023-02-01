*** Settings ***
Documentation
Resource    ../resource/base/common_functionality.resource/
Library  DataDriver      file=../Phptravelstest_data/phptravels_data.xlsx      sheet_name=InvalidLoginTest
Test Setup      Launch Browser And Navigate To Url
Test Teardown      Close Browser
Test Template    Invalid Login Template

*** Test Cases ***
TC1
*** Keywords ***
Invalid Login Template
     [Arguments]     ${email}     ${password}     ${expected_error}
     Click Element   xpath=//button[@id='ACCOUNT']
     Click Element   link=Customer Login
     Input Text      name=email    ${email}
     Input Text      name=password     ${password}
     Click Element   xpath=//button[@type='submit']
     Page Should Contain     ${expected_error}
     Sleep    5s