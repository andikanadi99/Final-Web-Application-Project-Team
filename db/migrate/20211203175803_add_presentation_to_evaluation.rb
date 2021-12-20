# frozen_string_literal: true

# add pres to eval
class AddPresentationToEvaluation < ActiveRecord::Migration[6.0]
  def change
    add_reference :evaluations, :presentation
  end
end
