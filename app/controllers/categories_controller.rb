class CategoriesController < ApplicationController
    # Display all categories
    def index
      @categories = Category.all
    end

    # Show details for a specific category
    def show
      @category = Category.find(params[:id])
    end

    # Render form for new category
    def new
      @category = Category.new
    end

    # Create a new category in the database
    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to categories_path, notice: 'Category was successfully created.'
      else
        render :new
      end
    end

    # Delete a category
    def destroy
      @category = Category.find(params[:id])
      @category.destroy
      redirect_to categories_path, alert: 'Category was successfully deleted.'
    end

    private

    # Strong parameters to prevent mass assignment
    def category_params
      params.require(:category).permit(:name)
    end
  end
