#!/usr/bin/env puma

directory '/home/quintasan/glosowanie'
rackup "/home/quintasan/glosowanie/config.ru"
environment ENV.fetch("RAILS_ENV") { "development" }

pidfile "/home/quintasan/glosowanie/tmp/pids/puma.pid"
state_path "/home/quintasan/glosowanie/tmp/pids/puma.state"
stdout_redirect '/home/quintasan/glosowanie/log/puma.error.log', '/home/quintasan/glosowanie/log/puma.access.log', true

threads 2,4

bind 'unix:///home/quintasan/glosowanie/tmp/sockets/glosowanie.sock'

workers 0

preload_app!
