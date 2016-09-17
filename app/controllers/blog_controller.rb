class BlogController < ApplicationController
  before_action :set_post, only: [:show]

  # GET /posts
  # GET /posts.json
  def index
    @blog = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:name, :title, :content)
  end
end
