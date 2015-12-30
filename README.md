Papers
======

This is a *common* repo host for all research papers.

Initialize Common Repo 
----------

Checkout this repo to some directory, e.g., ```$WORKSPACE/```, and you
will see the directory as

	$WORKSPACE/Papers

This repo contains all the style and bib files for hosting research papers.

Import a Paper Repo
----------

Checkout a *paper* repo **from** the *common* repo as

	cd $WORKSPACE/Papers
	git clone <REMOTE>

where ```<REMOTE>``` is a paper repo remote.
For instance, if the ```<REMOTE>``` is
```git@git.corp.yahoo.com:kzhai/2013_infvoc.git```, and you will see a
directory as

	$WORKSPACE/Papers/2013_infvoc

**Never** commit any content from *paper* repo to *common* repo.

Compile a Paper
----------

Compile a paper **from** the *common* repo as

	cd $WORKSPACE/Papers
	./make_paper.sh <PAPER_TITLE>

where ```<PAPER_TITLE>``` is the directory name of the paper title.
The script will look for the entry point ```<PAPER_TITLE>/main.tex```.
For instance, to compile the above paper, simply run

	./make_paper.sh 2013_infvoc

and you will see a main.pdf in directory ```$WORKSPACE/Papers```.
