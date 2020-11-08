class Technology < ApplicationRecord
  has_many :categories
  has_many :projects, through: :categories

  validates :name, presence: true
end
