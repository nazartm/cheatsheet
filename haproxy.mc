
Install HAProxy
---------------

    $ apt update
    $ apt install haproxy

Edit the config
---------------

Default is located here:
    
    $ vim /etc/haproxy/haproxy.cfg

Add frontends and backends:

```
frontend main
    bind *:80
    mode http
    use_backend springboot
  
backend springboot
    mode http
    server local  127.0.0.1:8080
```

Validate configuration
----------------------

    $ haproxy  -c -V -f /etc/haproxy/haproxy.cfg

Start haproxy
-------------

    $ service haproxy start
