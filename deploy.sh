#!/bin/bash

# exit on any unexpected error or unset variable
set -o errexit -o nounset

terraform plan

terraform apply

echo "Setting git user name"
git config user.name $GH_USER_NAME

echo "Setting git user email"
git config user.email $GH_USER_EMAIL

echo "Adding git upstream remote"
git remote add upstream "https://$GH_TOKEN@github.com/$GH_REPO.git"

git checkout master

git add .

NOW=$(TZ=Europe/Dublin date)

git commit -m "tfstate: $NOW [ci skip]"

echo "Pushing changes to upstream master"
git push upstream master