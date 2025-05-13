class Actor < ApplicationRecord
  has_many :characters, class_name: "Character"
  has_many :filmography, through: :characters, source: :movie

  validates(:name, presence: true)
end
