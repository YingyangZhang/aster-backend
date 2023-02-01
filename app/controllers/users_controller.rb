class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :destroy]

    def create
        @user = User.create!(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :unprocessable_entity
        end
    end

    def show
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def update
        user = User.find(params[:id])
        user.update!(update_user_params)
        render json: { user: UserSerializer.new(current_user) }
    end
    
    private
    
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name, :email, :age, :gender)
    end

    def update_user_params
        params.permit(:first_name, :last_name, :email, :age, :gender)
    end
end
