DNS
===

Commands related to troubleshooting DNS issues.

dig
---

Get IP addresses of a domain name:

    $ dig enedilim.com A +noall +answer
	
Get nameservers of a domain name:

    $ dig enedilim.com NS +noall +answer
	
All DNS record types can be looked up: A, AAA, NS, MX, TXT.

Revers DNS lookup using IP:

    $ dig -x 45.76.85.143 +short
