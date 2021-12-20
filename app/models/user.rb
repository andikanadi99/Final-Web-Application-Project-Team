# frozen_string_literal: true

# User
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :presentations

  validates :email, presence: true,
                    format: { with: /[a-zA-Z]+\.[1-9]\d*@osu\.edu/, message: 'must be a valid osu address' }
end
