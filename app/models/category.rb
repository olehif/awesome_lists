class Category < ApplicationRecord
  belongs_to :technology
  has_many :projects

  validates :name, presence: true
end
