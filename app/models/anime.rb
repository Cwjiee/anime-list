class Anime < ApplicationRecord
    belongs_to :user
    has_many :lists, dependent: :destroy
    has_many :characters
    has_one_attached :image
end
