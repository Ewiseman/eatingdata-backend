class Cookbook < ApplicationRecord
  has_many :recipes, dependent: :destory
end
