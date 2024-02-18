# frozen_string_literal: true

class MealFormComponent < ApplicationComponent
  def template
    div(class: 'container') do
      h1 { 'MealForm' }
      p { 'Find me in app/views/components/meal_form_component.rb' }
    end
  end
end
