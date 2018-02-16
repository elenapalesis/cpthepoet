port ENV['PORT']
# Reduce Heroku's recommended setting since we can't fit that many workers in memory:
workers Integer(ENV.fetch('WEB_CONCURRENCY', '2')) / 2
threads_count = ENV.fetch('RAILS_MAX_THREADS', '2')
threads threads_count, threads_count
preload_app!

before_fork do
  ActiveRecord::Base.connection_pool.disconnect!
end

on_worker_boot do
  ActiveRecord::Base.establish_connection
end

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
