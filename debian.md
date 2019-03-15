Debs
====

Packages installed without a manager


To install
---------

    $ sudo dpkg -i session-manager-plugin.deb

To remove
---------

    $ sudo dpkg -r session-manager-plugin


Instead of using dpkg, which is a low level package manager, you'd be better off using apt. To install the .deb files using apt, copy them to the apt cache

    $ sudo cp *.deb /var/cache/apt/archives/

and then just do the regular upgrade:

    $ apt-get upgrade
