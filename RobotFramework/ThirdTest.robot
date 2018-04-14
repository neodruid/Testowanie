*** Settings ***
Documentation    Suite description
Library     Selenium2Library
Suite Setup    Go to homepage
Suite Teardown    Close All Browsers

*** Variables ***
${HOMEPAGE}    http://www.google.pl
${BROWSER}    chrome


*** Test Cases ***
[TC-001] Google devopes and find eficode
    Google and check results    devops    https://pl.wikipedia.org/wiki/DevOps


*** Keywords ***
Google and check results
    [Arguments]    ${searchkey}    ${results}
    Input Text    id=lst-ib   ${searchkey}
    Press Key    name=q    \\13
    wait until page contains    ${results}

Go to homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}