class Character < ApplicationRecord
    belongs_to :user
    has_many :character_items
    has_many :character_perks
    has_one :magic_ability
end
