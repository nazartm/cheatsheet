Java
====

Debugging SSL handshake issues
------------------------------

Start JVM with `-Djavax.net.debug=SSL`

Update alternatives
-------------------

    $ update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_20/bin/java 3
	$ update-alternatives --config java