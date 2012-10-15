class CategoryController < ApplicationController
  def category
    @category = params[:id]
    @post = Post.where(:category => @category).all(:order => 'created_at DESC')
  end
end
