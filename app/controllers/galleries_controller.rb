class GalleriesController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        render json: Gallery.all, status: :accepted
    end
end
