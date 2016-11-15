class Movie < ApplicationRecord
  # Direct associations

  has_many   :characters,
             :dependent => :destroy

  belongs_to :director,
             :counter_cache => true

  # Indirect associations

  has_many   :cast,
             :through => :characters,
             :source => :actor

  # Validations

  validates :director_id, :presence => true

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

end
