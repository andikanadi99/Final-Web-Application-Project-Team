# frozen_string_literal: true

# add student/teacher role to users
class AddRoleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :string
  end
end
