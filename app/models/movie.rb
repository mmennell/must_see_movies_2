class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :director_id, :presence => true

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

end
