class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(id: params[:id])
    if @category.nil?
      redirect_to categories_path, alert: 'Category not found.'
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category), notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    if @category
      @category.destroy
      redirect_to categories_path, notice: 'Category was successfully deleted.'
    else
      redirect_to categories_path, alert: 'Category not found.'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
