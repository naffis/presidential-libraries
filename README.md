To run locally: bundle exec jekyll serve

Github pages doesn't allow custom plugins, which this codebase relies on. In order to get around this issue we don't use Github to build the jekyll site, instead we use travis-ci to build our site and then deploy that site to gh-pages. The process, once configured, should be the same. You check in your changes, travis builds the static jekyll site, and that site gets deployed to github. 

Getting things configured requires some github surgery. There are many ways to do it, this is how I did it. 

travis encrypt 'GIT_NAME="YOUR_USERNAME_HERE" GIT_EMAIL="YOUR_EMAIL_HERE" GH_TOKEN="YOUR_TOKEN_HERE"' --add