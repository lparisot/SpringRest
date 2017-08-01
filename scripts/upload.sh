# Upload your application file your storage container

user=user@example.com
password=password
identity_domain=identity-domain
zip_name=EmployeeRESTApp-1.0-dist.zip
zip_path=/c/labs/SpringRepo/EmployeeRestApp/target

curl -i -v -X PUT -u $user:$password https://$identity_domain.storage.oraclecloud.com/v1/Storage-$identity_domain/apps/$zip_name -T $zip_path/$zip_name
