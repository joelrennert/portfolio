#!/usr/bin/env sh

set -e

nprm run build

cd dist

git init
git add .
git commit -m 'new'

git push -f git@github.com:joelrennert/portfolio.git master:portfolio

cd -