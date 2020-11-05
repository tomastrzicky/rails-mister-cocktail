class Dose < ApplicationRecord
  #association
  belongs_to :cocktail
  belongs_to :ingredient
  #validation
  validates :description, :ingredient, :cocktail, presence: true
  validates_uniqueness_of :cocktail, scope: :ingredient
end
