# frozen_string_literal: true

module Categories
  class IndexView < ApplicationView
    def initialize(categories)
      @categories = categories
    end

    def template
      div(class: 'row row-cols-2 row-cols-md-3 g-3') do
        @categories.each do |category|
          div(class: 'col') do
            render CategoryCardComponent.new(category)
          end
        end
      end
    end
  end
end
