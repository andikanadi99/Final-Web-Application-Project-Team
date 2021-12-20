# frozen_string_literal: true

# Presentation
class Presentation < ApplicationRecord
  has_many :evaluations
  has_one :user

  validates :Time, format: { with: /[01]?[0-9]|2[0-3]:[0-5][0-9]/, message: 'Enter in hh:mm format' }
  validates :Date,
            format: { with: %r{(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d},
                      message: 'Enter date in this format: mm/dd/yyyy' }
end
