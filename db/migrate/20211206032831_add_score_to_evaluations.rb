# frozen_string_literal: true

# Add score to evals
class AddScoreToEvaluations < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluations, :score, :integer
  end
end
