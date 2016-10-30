class Park < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :city

  has_many :reviews
  has_many :reviewers, through: :reviews, source: :reviewer

  validates :name, :description, presence: true
end