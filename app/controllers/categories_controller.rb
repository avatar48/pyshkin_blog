class CategoriesController < ApplicationController
  before_action :set_categories, only: [:show]
  def index
    @sections = Category.all
  end

  def show
  end

  private

    def set_categories
      @categories = Category.find(params[:id])
      @posts = Category.find(params[:id]).posts
    end

end
