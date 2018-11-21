#!/bin/sh
set -e
rm -fr ./sample
git clone /Users/konishiyuji/workspaces/Jenkins/gradleSample/repo/src/kt/sample.git
cd ./sample
git remote add ut /Users/konishiyuji/workspaces/Jenkins/gradleSample/repo/src/ut/sample.git
git pull ut master --allow-unrelated-histories
