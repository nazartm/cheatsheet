SSL
===

Export key from java keystore:

	$ keytool -export -alias mykey -file mykey.crt -keystore pubkey.jks

Convert crt public key to pem:

	$ openssl x509 -inform der -pubkey -in mykey.crt -out mycert.pem -noout > mykey.pem
	
See certificate chain:

	$ openssl s_client -connect example.com:443 -showcerts