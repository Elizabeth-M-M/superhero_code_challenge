class Power < ApplicationRecord
  has_many :hero_powers
  has_many :heros, through: :hero_powers
  validates :description, presence:true, inclusion: { in: 1..20 }
end
