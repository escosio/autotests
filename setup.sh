#!/bin/bash

echo "(if you haven't already you will need to sudo)"
#installing pip
python get-pip.py
#install robot framework
pip install robotframework
#install selenium
pip install selenium
#install library
pip install robotframework-selenium2library 
#get webdrivers
echo "Now go here and get the webdriver https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.18.0-macos.tar.gz"



