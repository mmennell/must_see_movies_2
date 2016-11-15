class Movie < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

end
