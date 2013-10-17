God.watch do |w|
  w.name = "siege"
  w.start = "siege localhost &"
  w.keepalive
end

God.watch do |w|
  w.name = "unicorn"
  w.start = "cd /home/rails && bundle exec unicorn_rails -D -E production -c /home/rails/config/unicorn.rb"
  w.keepalive
end
