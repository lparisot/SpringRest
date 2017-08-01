# List the contents of your apps container

user=user@example.com
password=password
identity_domain=identity-domain

curl -i -X GET -u $user:$password https://$identity_domain.storage.oraclecloud.com/v1/Storage-$identity_domain/$1
