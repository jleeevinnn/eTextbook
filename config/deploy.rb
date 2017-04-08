# config valid only for current version of Capistrano
lock '3.4.0'

set :application, "eTextbook"
set :repo_url, "https://github.com/jleeevinnn/eTextbook.git"

set :deploy_to, '/home/deploy/eTextbook'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do

    end
  end

end
