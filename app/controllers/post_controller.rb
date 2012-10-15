class PostController < ApplicationController
  def new
  end

  def create
    @post = Post.new(params[:post])
    @post.save

    redirect_to :action => :show, :id => @post.id
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def save_changes
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to :action => :show, :id => @post.id
    else
      render 'edit'
    end
  end
end
