# Deploy the application stored in your storage apps container

user=user@example.com
password=password
identity_domain=identity-domain
zip_name=EmployeeRESTApp-1.0-dist.zip
zip_path=/c/labs/SpringRepo/EmployeeRestApp/target

curl -i -X GET -u $user:$password https://$identity_domain.storage.oraclecloud.com/v1/Storage-$identity_domain/

curl -i -v -X POST -u $user:$password \
-H "X-ID-TENANT-NAME:$identity_domain" \
-H "Content-Type: multipart/form-data" \
-F "name=EmployeeRESTApp1" \
-F "runtime=java" \
-F "subscription=Monthly" \
-F "deployment=@deployment.json" \
-F "archiveURL=$zip_path/$zip_name" \
-F "notes=REST app for testing" \
https://apaas.region.oraclecloud.com/paas/service/apaas/api/v1.1/apps/$identity_domain
