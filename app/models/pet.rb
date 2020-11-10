class Pet < ApplicationRecord


  SPECIES = %w(pig bird lyon dog)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES}
end
