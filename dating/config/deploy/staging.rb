set :rails_env, :staging
set :branch, 'staging'
set :user, 'dating_staging'
set :keep_releases, 5

role :web, "176.9.83.211"
role :app, "176.9.83.211"
role :db,  "176.9.83.211", :primary => true

