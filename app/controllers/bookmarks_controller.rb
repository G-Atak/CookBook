class BookmarksController < ApplicationController
  before_action :set_category

  def new
    @bookmark = Bookmark.new
    @recipes = Recipe.all  
  end

  def create
    @bookmark = @category.bookmarks.new(bookmark_params)
    if @bookmark.save
      redirect_to category_path(@category), notice: "Recipe added to category!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = @category.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@category), notice: "Recipe removed from category!"
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
