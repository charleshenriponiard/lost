class Pet < ApplicationRecord


  SPECIES = %w(pig bird lyon dog)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES}

  def found_on
    "#{(Date.today - date).to_i} days ago"
  end
end
