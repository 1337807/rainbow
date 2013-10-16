listen "127.0.0.1:8080"
worker_processes 2
user "rails"
working_directory "/home/rails"
pid "/home/unicorn/pids/unicorn.pid"
preload_app true
stderr_path "/home/unicorn/log/unicorn.log"
stdout_path "/home/unicorn/log/unicorn.log"
