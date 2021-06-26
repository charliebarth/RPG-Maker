class CharactersController < ApplicationController
    def create
        character = Character.create(character_params)
        if character.valid?
          render json: { character: CharacterSerializer.new(character).serializable_hash }, status: :created
        else 
          render json: { error: 'failed to create character', messages: character.errors.full_messages }, status: :not_acceptable
        end
    end

    def index
        characters = Character.all
        if characters == nil
            render json: { error: 'No characters created yet' }, status: :no_characters
        else
            render json: { characters: CharacterSerializer.new(characters).serializable_hash }, status: :retrieved_characters
        end
    end

    def update
        if Character.find(params[:id])
            character = Character.find(params[:id])

            character_params.each do |key, value|
                if value
                    character[key.to_sym] = value
                end
                
            end

            character.save
        else
            render json: { error: "That character doesn't appear to exist." }, status: :not_a_character
        end

    end

    def destroy
        if current_user.id == character_params[:user_id].to_i && Character.find(params[:id])
            character = Character.find(params[:id])
            character.delete
        elsif current_user.id != character_params[:user_id].to_i
            render json: { error: 'You do not have permission to delete this character. You can only delete your own characters.' }, status: :unpermitted
        elsif !Character.find(params[:id])
            render json: { error: "That character doesn't appear to exist." }, status: :not_a_character
        end
    end

    private
  
    def character_params
      params.require(:character).permit(:name, :strength, :dexterity, :consitution, :charisma, :intelligence, :wisdom, :will, :stress, :resolve, :spellcaster, :max_inventory_weight, :inventory_weight, :inventory_units, :inventory, :user_id)
    end
end
