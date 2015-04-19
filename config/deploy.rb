lock '3.2.1'

set :application, "ngnews"
set :repo_url,  "git@github.com:netguru/ngnews.git"
set :deploy_to, ENV['DEPLOY_PATH']

set :linked_files, %w(config/database.yml config/secrets.yml)
set :linked_dirs, %w(bin log tmp vendor/bundle public/uploads)
