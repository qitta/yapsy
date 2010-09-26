#!/bin/sh
# -*- coding: utf-8 -*-



# the sources of all sources
PROJECT_CODE_REPOS=https://yapsy.svn.sourceforge.net/svnroot/yapsy/yapsydir
SRC_BRANCH=trunk/

# the destination of the doc
DOC_DEST=/home/groups/y/ya/yapsy/htdocs

# get the latest version of the docs (yapsy is not big hence that should be ok to doanload it all)
install -d $DOC_DEST/src
svn co $PROJECT_CODE_REPOS/$SRC_BRANCH/yapsy $DOC_DEST/src/

# generate the doc
cd $DOC_DEST && epydoc -o epydoc --no-frames --docformat restructuredtext --name=yapsy --url=http://yapsy.sourceforge.net yapsy

rm -r $DOC_DEST/src

# alternatively, run epydoc locally and update the whole stuff:
# $ scp epydoc/* tibonihoo@shell.sourceforge.net:/home/groups/y/ya/yapsy/htdocs/
# $ scp -r artwork tibonihoo@shell.sourceforge.net:/home/groups/y/ya/yapsy/htdocs/


