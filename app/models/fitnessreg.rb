class Fitnessreg < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :img, presence: false
  validates :leftcolor, presence: true
  validates :rightcolor, presence: true
end
