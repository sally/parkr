class Park < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :city

  has_many :reviews
end
