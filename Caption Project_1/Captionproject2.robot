*** Settings ***
Library     AppiumLibrary
*** Test Cases ***

TC1
   Open Application    remote_url=http://localhost:4723/wd/hub
   ...      platformName=android
   ...      deviceName=redmi
   ...      appPackage=com.lms.greatlakes
   ...      appActivity=com.lms.greatlakes.MainActivity
   ...      noRest=True

   Set Appium Timeout    30s
   Wait Until Page Contains Element            android=UiSelector().text("CONTINUE WITH GOOGLE")    30s
   Click Element               android=UiSelector().text("CONTINUE WITH GOOGLE")
   Wait Until Page Contains Element            android=UiSelector().text("naveenmanibhaskar19@gmail.com")
   Click Element        android=UiSelector().text("naveenmanibhaskar19@gmail.com")
   #if it is not going to the next step Run multiple times


   Wait Until Page Contains Element    xpath=//*[@text='Live Master Class']     40s
   Click Element        xpath=//*[@text='Live Master Class']


   ${abc}     Get Matching Xpath Count    xpath=//*[@text='Business Lessons from Panchtantra']
     WHILE    ${abc}==0
         Swipe By Percent    90    70    90    20
         ${abc}     Get Matching Xpath Count    xpath=//*[@text='Business Lessons from Panchtantra']
     END

   Click Element    xpath=//*[@text='Business Lessons from Panchtantra']
   Sleep   30s
   Element Should Contain Text    xpath=//*[@text='About this Live Session']        About this Live Session


   Sleep    20s

   [Teardown]   Close Application