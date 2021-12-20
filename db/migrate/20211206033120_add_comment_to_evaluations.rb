# frozen_string_literal: true

# Add comment to evals
class AddCommentToEvaluations < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluations, :comment, :string
  end
end
