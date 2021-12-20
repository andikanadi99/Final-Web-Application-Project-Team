# frozen_string_literal: true

# create evaluations
class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.string :From
      t.string :Time
      t.string :Date

      t.timestamps
    end
  end
end
