# Github Actions Jekyll

So, you want to have a statically generated blog? And you decided that jekyll is the thing you're gonna use for it?  Why not add automatic deployment.  Simply follow this guide, and pushing your code to master will trigger a build and deploy to an s3 bucket.

# The important resources

Makefile - contains some docker based commands to build and deploy a jekyll website
s3_website.yml (copied into the github_actions_jekyll subdirectory) -- sets the s3 creds/bucket information
.github/workflows -- the actual actions definitions.  All branches will do the jekyll build.  Master pushes will actually push to s3.
github_actions_jekyll/_config.yml-- move to config

# Setting up aws

The bucket
The creds
