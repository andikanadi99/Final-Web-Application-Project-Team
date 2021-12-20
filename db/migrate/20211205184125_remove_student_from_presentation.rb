# frozen_string_literal: true

# remove student from pres
class RemoveStudentFromPresentation < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :presentations, :students
  end
end
