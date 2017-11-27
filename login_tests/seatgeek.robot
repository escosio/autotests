*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot
Library           Selenium2Library

*** Test Cases ***

Home page check
	Open Browser					https://seatgeek.com/
	# Go To  							
	Wait Until Page Contains 		Millions of tickets in one place.
	Focus 							id=search-input
	Input Text 						id=search-input 		Knicks
	Wait Until Element Is Visible  	css=.ui-sgautocomplete
	Click Element 					css=.sgautocomplete-result
	Wait Until Page Contains 		New York Knicks Tickets
	Location Should Be 				https://seatgeek.com/new-york-knicks-tickets
	[Teardown]    Close Browser