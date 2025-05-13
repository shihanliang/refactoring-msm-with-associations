class Director < ApplicationRecord
  has_many :filmography, class_name: "Movie", foreign_key: "director_id"

  validates(:name, presence: true)
end
