# frozen_string_literal: true

class MealsController < ApplicationController
  layout -> { ApplicationLayout }

  def index
    meals = Meal.all
    render Meals::IndexView.new(meals)
  end

  def show
    meal = Meal.find(params[:id])
    render Meals::ShowView.new(meal)
  end
end
