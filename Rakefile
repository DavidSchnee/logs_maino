# frozen_string_literal: true

begin
  require "bundler/setup"
  require "logs_maino"
  require 'pry'
rescue LoadError
  puts('You must `gem install bundler` and `bundle install` to run rake tasks')
end

desc('Open an irb session')
task :console do
  sh 'bin/console'
end


DB_CONFIG = {
  adapter: 'postgres',
  host: ENV['POSTGRES_HOST'],
  user: ENV['POSTGRES_USER'],
  password: ENV['POSTGRES_PASSWORD']
}.freeze

namespace :db do
  desc('Run migrations')
  task :migrate, [:version] do |_t, args|
    require 'sequel/core'
    Sequel.extension :migration
    
   
    
    DB = Sequel.connect(
      DB_CONFIG.merge(database: ENV['POSTGRES_DB'])
    )
    
    version = args[:version].to_i if args[:version]
    Sequel::Migrator.run(DB, 'db/migrate', target: version)
  end
end
