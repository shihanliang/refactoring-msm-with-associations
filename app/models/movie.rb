class Movie < ApplicationRecord
  # 关联关系
  belongs_to :director, class_name: "Director", optional: true

  has_many :characters
  has_many :cast, through: :characters, source: :actor

  # 校验
  validates(:title, uniqueness: true)
end
