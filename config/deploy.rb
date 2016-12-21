set :application, "Playground"
set :repository,  "git@github.com:philipqnguyen/playground.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :branch, "master"

set :user, "philip"

set :deploy_to, "/var/www/app"

set :use_sudo, false

set :rails_env, "production"

set :deploy_via, :copy

set :keep_releases, 5

default_run_options[:pty] = true

# set :ssh_options, { :forward_agent => true, :port => 22 }

role :web, "138.197.216.85"                          # Your HTTP server, Apache/etc
role :app, "138.197.216.85"                          # This may be the same as your `Web` server
role :db,  "138.197.216.85", :primary => true # This is where Rails migrations will run

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
