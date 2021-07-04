class PerksController < ApplicationController
    def create
        perk = Perk.create(perk_params)
        if perk.valid?
          render json: { perk: PerkSerializer.new(perk).serializable_hash }, status: :created
        else 
          render json: { error: 'failed to create perk', messages: perk.errors.full_messages }, status: :not_acceptable
        end
    end

    def index
        perks = Perk.all
        if perks == nil
            render json: { error: 'No perks created yet' }, status: :no_perks
        else
            render json: { perks: PerkSerializer.new(perks).serializable_hash }, status: :retrieved_perks
        end
    end

    def update
        if Perk.find(params[:id])
            perk = Perk.find(params[:id])

            perk_params.each do |key, value|
                if value
                    perk[key.to_sym] = value
                end
                
            end

            perk.save
        else
            render json: { error: "That perk doesn't appear to exist." }, status: :not_a_perk
        end

    end

    def destroy
        if current_user.admin? && Perk.find(params[:id])
            perk = Perk.find(params[:id])
            perk.delete
        elsif !current_user.admin?
            render json: { error: 'You do not have permission to delete this perk. You need to be an admin to delete perks.' }, status: :unpermitted
        elsif !Perk.find(params[:id])
            render json: { error: "That perk doesn't appear to exist." }, status: :not_a_perk
        end
    end

    private
  
    def perk_params
      params.require(:perk).permit(:name, :description, :modifiers, :original_class)
    end
end
