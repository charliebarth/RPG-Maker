class CharacterPerksController < ApplicationController
    def create
        character_perk = CharacterPerk.create(character_perk_params)
        if character_perk.valid?
          render json: { character_perk: CharacterPerkSerializer.new(character_perk).serializable_hash }, status: :created
        else 
          render json: { error: 'failed to create character_perk', messages: character_perk.errors.full_messages }, status: :not_acceptable
        end
    end

    def index
        character_perks = CharacterPerk.all
        if character_perks == nil
            render json: { error: 'No character_perks created yet' }, status: :no_character_perks
        else
            render json: { character_perks: CharacterPerkSerializer.new(character_perks).serializable_hash }, status: :retrieved_character_perks
        end
    end

    def update
        if CharacterPerk.find(params[:id])
            character_perk = CharacterPerk.find(params[:id])

            character_perk_params.each do |key, value|
                if value
                    character_perk[key.to_sym] = value
                end
                
            end

            character_perk.save
        else
            render json: { error: "That character_perk doesn't appear to exist." }, status: :not_a_character_perk
        end

    end

    def destroy
        if current_user.admin? && CharacterPerk.find(params[:id])
            character_perk = CharacterPerk.find(params[:id])
            character_perk.delete
        elsif !current_user.admin?
            render json: { error: 'You do not have permission to delete this character_perk. You need to be an admin to delete character_perks.' }, status: :unpermitted
        elsif !CharacterPerk.find(params[:id])
            render json: { error: "That character_perk doesn't appear to exist." }, status: :not_a_character_perk
        end
    end

    private
  
    def character_perk_params
      params.require(:character_perk).permit(:character_id, :perk_id, :remaining_uses, :source)
    end
end
