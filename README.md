# SpringRest

## Dev

```bash
$ cd SpringRest/EmployeeRESTApp
$ mvn clean package
$ java -jar target/EmployeeRESTApp-1.0.jar
```

## Test

```bash
$ echo $HOSTNAME
$ curl -i -X GET http://<HOSTNAME>:8080/employees
$ curl -i -X GET http://<HOSTNAME>:8080/employees/lastname/J
$ curl -i -X GET http://<HOSTNAME>:8080/employees/title/National
$ curl -i -X GET http://<HOSTNAME>:8080/employees/departement/Mobility
```
