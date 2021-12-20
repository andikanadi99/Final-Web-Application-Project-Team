# frozen_string_literal: true

# remove student idf from pres
class RemoveStudentIdFromPresentation < ActiveRecord::Migration[6.0]
  def change
    remove_column :presentations, :student_id, :integer
  end
end
