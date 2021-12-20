# frozen_string_literal: true

# Remove student id from evals
class RemoveStudentIdFromEvaluations < ActiveRecord::Migration[6.0]
  def change
    remove_column :evaluations, :student_id, :integer
  end
end
