set :user, "william"
set :domain, "beta.worshiplog.com"
set :application, "worshiplog"

set :repository,  "#{user}@#{domain}:~/git/worship.git"
set :deploy_to, "/srv/beta.worshiplog.com"

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true        # This is where Rails migrations will run

set :deploy_via, :remote_cache
set :scm, :git
set :branch, "master"
set :scm_verbose, true
set :use_sudo, false
set :rails_env, :production

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  desc "cause Passenger to initiate a restart"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

after "deploy:update_code", :bundle_install
desc "install the necessary prerequisites"
task :bundle_install, :roles => :app do
  run "cd #{release_path} && bundle install"
end
