# frozen_string_literal: true

DB.run 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";'

Sequel.migration do
  change do
    create_table :logs do
      primary_key :id, :uuid, default: Sequel.function(:uuid_generate_v4), type: :uuid
      DateTime :created_at, default: Sequel::CURRENT_TIMESTAMP, index: true
      String :status, null: false, default: 'pending'
      jsonb :data, default: '{}'
    end
  end
end
