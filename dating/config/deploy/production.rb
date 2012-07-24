set :rails_env, :production
set :branch, 'master'
set :user, 'dating_production'
set :keep_releases, 15

role :web, "176.9.83.211"
role :app, "176.9.83.211"
role :db,  "176.9.83.211", :primary => true

