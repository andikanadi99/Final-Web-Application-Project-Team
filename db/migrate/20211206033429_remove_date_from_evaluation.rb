# frozen_string_literal: true

# Remove date from eval
class RemoveDateFromEvaluation < ActiveRecord::Migration[6.0]
  def change
    remove_column :evaluations, :date, :varchar
  end
end
