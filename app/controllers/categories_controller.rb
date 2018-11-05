class CategoriesController < ApplicationController
  def index
    @sections = Category.all
  end
end
