class User < ApplicationRecord
  has_many :sugars
  has_many :carbs
  has_many :ellipticals
  has_many :weights
  has_many :lifts
end
