*** Settings ***

Documentation
Resource    ../resource/base/common_functionality.resource/

Test Setup      Launch Browser And Navigate To Url
Test Teardown       Close Browser
Library     DataDriver      file=../Phptravelstest_data/phptravels_data.xlsx      sheet_name=ValidLoginTest

Test Template    Valid Login Template

*** Test Cases ***
TC1

*** Keywords ***
Valid Login Template
    [Arguments]      ${email}     ${password}  ${expected_result}
    Click Element    xpath=//button[@id='ACCOUNT']
    Click Element    link=Customer Login
    Input Text       name=email     ${email}
    Input Text       name=password     ${password}
    Click Element    xpath=//button[@type='submit']
    Page Should Contain    ${expected_result}
    #Element Should Contain    xpath=(//*[contains(text(),'Naveen')] )[1]  ${expected_result}
