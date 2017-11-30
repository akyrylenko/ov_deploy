set :stage, :staging

role :app, 'ov@172.104.250.75'
role :web, 'ov@172.104.250.75'
role :db,  'ov@172.104.250.75'

set :rails_env, :staging
set :rake, 'bundle exec rake'

set :deploy_to, '/home/ov/application'

set :branch, ENV['BRANCH'] || 'master'

set :unicorn_config_path, "#{ current_path }/config/unicorn.rb"
