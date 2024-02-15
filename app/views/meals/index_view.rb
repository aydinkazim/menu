# frozen_string_literal: true

module Meals
  class IndexView < ApplicationView
    def initialize(meals)
      @meals = meals
    end

    def template
      h1 { 'Meals index' }
      p { 'Find me in app/views/meals/index_view.rb' }
    end
  end
end
