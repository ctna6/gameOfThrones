*** Settings ***
Documentation       Resource file for all keywords related to Game of thrones requests
Library             RequestsLibrary
Resource            ../variables/gameOfThronesHousesVARs.resource
Library             ../libraries/utilFunctions.py

***Keywords***
Get all house names for a specific region
    [Documentation]     Gets all house names for a specific region
    [Arguments]         ${regionName}
    ${result}=			GET     url=${housesUrl}?pageSize=${responsePageSize}&region=${regionName}    expected_status=${successExpectedStatus}
    ${housesName}=      Map List        ${result.json()}       name
    [Return]        	${housesName}