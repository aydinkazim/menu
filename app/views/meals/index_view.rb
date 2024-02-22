# frozen_string_literal: true

module Meals
  class IndexView < ApplicationView
    def initialize(meals)
      @meals = meals
    end

    def template
      div(class: 'row row-cols-3') do
        @meals.each do |meal|
          render MealCardComponent.new(meal)
        end
      end
    end
  end
end
