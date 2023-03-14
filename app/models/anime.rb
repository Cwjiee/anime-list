class Anime < ApplicationRecord
    belongs_to :user
    has_many :characters
    has_one_attached :image
end
