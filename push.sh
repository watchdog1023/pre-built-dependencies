#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files() {
  git checkout -b travis
  git add opencv/opencv-3.3.1.tar.gz
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add travis https://${GH_TOKEN}@github.com/watchdog1023/pre-built-dependencies.git > /dev/null 2>&1
  git push --quiet--set-upstream origin travis
}

setup_git
commit_website_files
upload_files
