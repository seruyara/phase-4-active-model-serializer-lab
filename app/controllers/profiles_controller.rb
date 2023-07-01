class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        profile = Profile.all
        render json: profile
    end

    def show 
        profile = Profile.find(params[:id])
        render json: profile
    end

    private

  def render_not_found_response
    render json: { error: "Profile not found" }, status: :not_found
  end
end
