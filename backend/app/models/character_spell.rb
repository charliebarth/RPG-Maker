class CharacterSpell < ApplicationRecord
    belongs_to :magic_ability
    belongs_to :spell
end
