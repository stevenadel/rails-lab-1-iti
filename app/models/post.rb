class Post < ApplicationRecord
  # belongs_to :creator
  has_and_belongs_to_many :emojis
end
