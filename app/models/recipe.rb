class Recipe < ApplicationRecord
  belongs_to :cookbook
  has_many :measurements, dependent: :destroy
  has_many :ingredients, through: :measurements, dependent: :destroy
end
