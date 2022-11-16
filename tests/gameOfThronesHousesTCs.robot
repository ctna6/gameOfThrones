*** Settings ***
Documentation       File for all Test cases related to Game of thrones requests
Library             Collections
Library             OperatingSystem
Resource            ../keywords/gameOfThronesHousesKW.resource

***Test Cases***
Get all house names for Dorne region
    [Documentation]     Gets all house names for Dorne region and then compares the actual result with the expected result.
	${actualDorneHousesName}=       Get all house names for a specific region		Dorne
    ${jsonFile}=                    Get file        resources/housesNamesExpectedResult.json
    ${expectedDorneHouseNames}=     Evaluate        json.loads('''${jsonFile}''')       json
	Lists Should Be Equal		    ${actualDorneHousesName}		${expectedDorneHouseNames}      ignore_order=True