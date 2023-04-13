# WEB-MODULE-BACKEND


## TO USE:

To check all students:
```
Invoke-RestMethod -Uri "http://localhost:3000/"od -Uri "http://localhost:3000/"
```

To take a tocken of a student:
```
Invoke-RestMethod -Uri "http://localhost:3000/login" -Method POST -Headers @{"Content-Tod -Uri "http://localhoype"="application/json"} -Body '{"nickname": "<nickname-of-nessesary-user>"}' 
```

To add new student:
```
Invoke-RestMethod -Uri "http://localhost:3000/students" -Method POST -Headers @{"CContent-Type"="application/json"; "Authorization"="Bearer <tocken-of-the-user>"} -Body '{"nickname": "<new-nickname>", "first_name": "<new-first-name>", "last_name": "<new-last-name>"}'
```