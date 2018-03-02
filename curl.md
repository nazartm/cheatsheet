CURL
====

Resolve host to a particular IP when DNS has multiple IPs:

	$ curl https://example.net/health  --resolve 'example.net:443:10.0.0.1'
	
Using response in next request:

	$ TOKEN=$(curl -X POST -H "Content-Type: application/json" --data '{"application_key": "0000-0000-0000-0000-0000", "expires_in": 86400}' https://example.net/auth)
	
	$ curl -X GET -H "Accept: application/json" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" https://another-example.net/