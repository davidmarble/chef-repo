for REPO in `cat opscode-cookbooks.cfg`
do
    echo Adding cookbook $REPO
    git submodule add git://github.com/opscode-cookbooks/$REPO.git cookbooks/$REPO
done