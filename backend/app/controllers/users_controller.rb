class UsersController < ApplicationController
    def create
        user = User.create(user_params)

        if user.valid?
          render json: { user: UserSerializer.new(user).serializable_hash }, status: :created
        else 
          render json: { error: 'failed to create user', messages: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def index
        users = User.all

        if users == nil
            render json: { error: 'No users created yet' }, status: :no_users
        else
            render json: { users: UserSerializer.new(users).serializable_hash }, status: :retrieved_users
        end
    end

    def login
      user = User.where(code: user_params[:code])

      if user.present? && user.name == user_params[:name]
        found_user = User.find(user.id)
        current_user(found_user)
        render json: { success: 'Successfully logged in' }, status: :logged_in
      elsif !user.present?
        render json: { error: 'No user eixsts with this code' }, status: :not_a_user
      elsif user.present? && user.name == !user_params[:name]
        render json: { error: "The code you entered doens't match with the name you entered" }, status: :credentials_do_not_match
      end
    end

    def logout
      current_user(nil)
      render json: { success: 'Successfully logged out' }, status: :logged_out
    end
    

    private
  
    def user_params
      params.require(:user).permit(:name, :code)
    end
end
