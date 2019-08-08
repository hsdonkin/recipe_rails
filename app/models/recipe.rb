class Recipe < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many(:ingredients)
  validates :title, presence: true
  validates_length_of :title, minimum: 5

end
