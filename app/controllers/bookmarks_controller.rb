class BookmarksController < ApplicationController
  def new
    @category = Category.find_by(id: params[:category_id])
    if @category.nil?
      redirect_to categories_path, alert: 'Category not found.'
      return
    end

    @bookmark = Bookmark.new
    @recipes = Recipe.all
  end

  def create
    @category = Category.find_by(id: params[:category_id])
    if @category.nil?
      redirect_to categories_path, alert: 'Category not found.'
      return
    end

    @recipe = Recipe.find_by(id: bookmark_params[:recipe_id])
    if @recipe.nil?
      redirect_to new_category_bookmark_path(@category), alert: 'Recipe not found.'
      return
    end

    @bookmark = Bookmark.new(category: @category, recipe: @recipe, comment: bookmark_params[:comment])

    if @bookmark.save
      redirect_to category_path(@category), notice: 'Recipe added to category.'
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category), notice: 'Recipe removed from category.'
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
