# frozen_string_literal: true

# Postgres + jsonb
# https://sequel.jeremyevans.net/rdoc-plugins/files/lib/sequel/extensions/pg_json_ops_rb.html

DB = Sequel.connect(
  adapter: 'postgres',
  host: ENV['POSTGRES_HOST'],
  user: ENV['POSTGRES_USER'],
  password: ENV['POSTGRES_PASSWORD'],
  database: ENV['POSTGRES_DB']
)

Sequel.extension :pg_json
