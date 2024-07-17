# frozen_string_literal: true

Sequel.migration do
  change do
    alter_table :logs do
      add_column :updated_at, DateTime, index: true
    end
  end
end