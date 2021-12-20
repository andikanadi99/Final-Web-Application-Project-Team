# frozen_string_literal: true

# Add foreign key (pres id) to eval
class AddForeignKeyToEvaluation < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :evaluations, :presentations
  end
end
