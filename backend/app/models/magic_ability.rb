class MagicAbility < ApplicationRecord
    belongs_to :character
    has_many :character_spells
end
