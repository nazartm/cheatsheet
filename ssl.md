SSL
===

Export key from java keystore:

	$ keytool -export -alias mykey -file mykey.crt -keystore pubkey.jks

Import cert to java keystore:

	$ keytool -import -alias example -keystore cacerts -file rds-combined-ca-bundle.pem

Convert crt public key to pem:

	$ openssl x509 -inform der -pubkey -in mykey.crt -out mycert.pem -noout > mykey.pem
	
See certificate chain:

	$ openssl s_client -connect example.com:443 -showcerts

See certificate text:

	$  openssl x509 -noout -text -in cert.pem
