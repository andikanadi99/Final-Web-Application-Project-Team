# frozen_string_literal: true

# Remove time from eval
class RemoveTimeFromEvaluation < ActiveRecord::Migration[6.0]
  def change
    remove_column :evaluations, :time, :varchar
  end
end
