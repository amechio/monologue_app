class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    if @post.save
      redirect_to posts_path, notice: "ツイートしました！"
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
 end

  private
  def post_params
    params.require(:post).permit(:name, :content)
  end
end
