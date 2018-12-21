git branch -D gh-pages \
&& git checkout --orphan gh-pages \
&& yarn build \
&& git add _site \
&& git commit -m \"build\" \
&& git push origin `git subtree split --prefix _site gh-pages`:gh-pages --force \
&& rm -rf _site \
&& git checkout master