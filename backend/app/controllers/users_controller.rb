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

    private
  
    def user_params
      params.require(:user).permit(:name, :code)
    end
end
