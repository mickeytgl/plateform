class Dinner < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :guests
  has_many :guests
end
