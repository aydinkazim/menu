# frozen_string_literal: true

class MealCardComponent < ApplicationComponent
  def initialize(meal)
    @meal = meal
  end

  def template
    div(class: 'card') do
      div(class: 'card-body') do
        div(class: 'card-title') do
          h1 { @meal.name }
        end
        div(class: 'card-text') do
          p { @meal.description }
        end
        a(href: "/meals/#{@meal.id}", class: 'btn btn-primary') { 'İncele' }
      end
    end
  end
end
