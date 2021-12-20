# frozen_string_literal: true

# add student id to eval
class AddStudentIdToEvaluations < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluations, :student_id, :integer
  end
end
