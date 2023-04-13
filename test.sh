# !/bin/bash

# Start the server in the background
node app/server.js &

# Store the process ID of the server process
server_pid=$!

# Test 1: Make GET request to the server
test1=$(curl -s http://localhost:3000/)
echo "
Test 1: 

$test1"

# Test 2: Make POST request to the server
test2=$(curl -s -X POST -H "Content-Type: application/json" -d '{"nickname": "olichka"}' http://localhost:3000/login)
echo "
Test 2: 


$test2"

# Test 3: Make POST request to the server with authorization header
test3=$(curl -s -X POST -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuaWNrbmFtZSI6Im9saWNoa2EiLCJpYXQiOjE2ODEzODAzOTZ9.PPelf9dfKUcZCkwQ3Tosqiz6sBD-PkjSFJ_zyMQrVBg" -d '{"nickname": "tata", "first_name": "Tania", "last_name": "Borsch"}' http://localhost:3000/students)
echo "
Test 3: 

$test3"

toCheckResult=$(curl -s http://localhost:3000/)
echo "
Result: 

$toCheckResult"

sleep 10000

# Stop the server after tests are done
kill $server_pid
