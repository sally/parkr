class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true

  has_many :created_parks, foreign_key: 'creator_id', class_name: 'Park'
  has_many :reviews, foreign_key: 'reviewer_id'
end
