class Spell < ApplicationRecord
    belongs_to :master_spell_list
    has_many :character_spells
end
