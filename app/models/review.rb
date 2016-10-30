class Review < ApplicationRecord
  belongs_to :reviewer, class_name: 'User'
  belongs_to :park

  validates :title, :body, presence: true
end
