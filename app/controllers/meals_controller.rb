# frozen_string_literal: true

class MealsController < ApplicationController
  before_action :set_meal, only: %i[show]
  layout -> { ApplicationLayout }

  def index
    @meals = Meal.all
    render Meals::IndexView.new(@meals)
  end

  def show
    render Meals::ShowView.new(@meal)
  end

  def new
    @meal = Meal.new
    render Meals::NewView.new(@meal)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end
end
