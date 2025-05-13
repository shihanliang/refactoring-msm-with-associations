class Character < ApplicationRecord
  belongs_to :movie, class_name: "Movie", optional: true
  belongs_to :actor, class_name: "Actor", optional: true
end
