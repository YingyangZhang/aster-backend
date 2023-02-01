class RequestsController < ApplicationController
    def create
        request = Request.create!(request_params)
        render json: { user: UserSerializer.new(current_user) }
    end

    def update
        request = Request.find(params[:id])
        request.update!(request_params)
        render json: { user: UserSerializer.new(current_user) }
    end

    def destroy
        request = Request.find(params[:id])
        request.destroy
        render json: { user: UserSerializer.new(current_user) }
    end

    private

    def request_params
        params.require(:request).permit(:first_name, :last_name, :email, :age, :gender, :date_of_birth, :height, :weight, :about, :motivation, :user_id)
    end
end
