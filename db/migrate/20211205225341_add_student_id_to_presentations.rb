# frozen_string_literal: true

# add student id to pres
class AddStudentIdToPresentations < ActiveRecord::Migration[6.0]
  def change
    add_column :presentations, :student_id, :integer
  end
end
