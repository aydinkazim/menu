# frozen_string_literal: true

module Meals
  class NewView < ApplicationView
    def initialize(meal)
      @meal = meal
    end

    def template
      render MealFormComponent
    end
  end
end
