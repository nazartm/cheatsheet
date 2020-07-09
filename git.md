Git
===

Remote
------

Hard reset to remote:

    $ git fetch origin
    $ git reset --hard origin/master
	
Stashing
--------

Save a stash under a name:
    
	$ git stash save "Name"
	
Popping, showing, applying:

    $ git stash pop stash@{n}
	$ git stash show stash@{n}
	$ git stash apply  stash@{n}
	

Working with patches
--------------------

For generating the patches from the topmost commits from a specific sha1 hash:

	$ git format-patch -<n> <SHA1>

The last 2 patches from head:

	$ git format-patch -2 HEAD 

Multiple patches in a single file:

	$ git format-patch -10 HEAD --stdout > multiple-commits.patch

See changes in the patch:

	$ git apply --stat multiple-commits.patch

Test the patch before applying:

	$ git apply --check multiple-commits.patch

Apply the patch on the current branch:

	$ git am < multiple-commits.patch 
	
Apply the patch with sign-off:

	$ git am --signoff < multiple-commits.patch
	
Credential caching

    $ git config --global credential.helper 'store --file ~/.my-credentials'

Add new remote:

    $ git remote add origin https://github.com/**/**.git
