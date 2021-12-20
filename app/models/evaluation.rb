# frozen_string_literal: true

# Evaluation
class Evaluation < ApplicationRecord
  belongs_to :presentation

  # validate that score is between 1 and 10
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
