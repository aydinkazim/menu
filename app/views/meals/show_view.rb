# frozen_string_literal: true

class Meals::ShowView < ApplicationView
  def initialize(meal)
    @meal = meal
  end

  def template
    em { @meal.category.name }
    h1 { @meal.name }
    p { @meal.description }
  end
end
