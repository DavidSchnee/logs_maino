# frozen_string_literal: true

Sequel.migration do
  change do
    alter_table :logs do
      remove_column :updated_at, DateTime, index: true  # Replace with your column name and type
    end
  end
end