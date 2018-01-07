*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          ../resources/resource.robot
Library           Selenium2Library
Library 		  BuiltIn
Test Teardown     Close Browser

*** Test Cases ***

Home page search
	Open Browser						https://seatgeek.com/  		${BROWSER}
	# Go To  							
	Wait Until Page Contains 			Millions of tickets in one place.
	Focus 								id=search-input
	Input Text 							id=search-input 		Knicks
	Wait Until Element Is Visible  		css=.ui-sgautocomplete
	Click Element 						css=.sgautocomplete-result
	Wait Until Page Contains 			New York Knicks Tickets
	Location Should Be 					https://seatgeek.com/new-york-knicks-tickets

Text To Download
	Open Browser						https://seatgeek.com/  		${BROWSER}
	Wait Until Page Contains 			Millions of tickets in one place.
	Go To 								https://seatgeek.com/mobile
	Wait Until Element Is Visible    	css=.text-app-link
	Focus 								css=.text-app-link
	Input Text 							css=.input-form-field  		9144386476
	Click Element 						css=.text-app-link__fields__button
	Wait Until Element Is Visible    	css=.text-app-link__success

Login 
	Open Browser						https://seatgeek.com/  		${BROWSER}
	Wait Until Page Contains 			Millions of tickets in one place.
	Wait Until Element Is Visible  		css=.login-button 
	Click Element 						css=.login-button
	Wait Until Element Is Visible 		name=email
	Input Text 							name=email 				${email}
	Sleep  								2
	# Wait Until Page Contains 			scottd26@gmail.com
	Input Text 							name=password			${pw}
	Click Element 						css=.login-register__left-pane__signup-button
	# Verify login
	Wait Until Element Is Visible 		css=.profile-circle
	[Teardown]     Delete All Cookies