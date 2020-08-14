*** Settings ***
Library          SeleniumLibrary
Test Teardown    Close All Browsers
Force Tags       ui

*** Test Cases ***
TC01
    Open Browser                https://example.com    headlesschrome
    Set Window Size             1440                   900
    Wait until page contains    abcdefg
    Log                         Done!