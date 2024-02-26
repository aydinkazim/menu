# frozen_string_literal: true

class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show]
  layout -> { ApplicationLayout }

  def index
    @categories = Category.all
    render Categories::IndexView.new(@categories)
  end

  def show
    render Categories::ShowView.new(@category)
  end

  def new
    @category = Category.new
    render Categories::NewView.new(@category)
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category, notice: 'Kategori kayıt edildi.'
    else
      puts @category.errors.full_messages
      render Categories::NewView.new(@category)
    end
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
