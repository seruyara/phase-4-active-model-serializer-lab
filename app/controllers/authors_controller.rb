class AuthorsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    author = Author.all 
    render json: author #, include:['posts', 'posts.tags']
  end

  def show
    author = Author.find(params[:id])
    render json: author #, include:['posts', 'posts.tags']
  end

  private

  def render_not_found_response
    render json: { error: "Author not found" }, status: :not_found
  end

end
