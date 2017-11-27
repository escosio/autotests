#!/bin/bash

echo "Tests are starting"
robot login_tests/valid_login.robot
robot login_tests/seatgeek.robot
echo "Test are finished running"
