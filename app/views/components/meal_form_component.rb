# frozen_string_literal: true

class MealFormComponent < ApplicationComponent
  include BootstrapForm::ActionViewExtensions::FormHelper
  include Phlex::Rails::Helpers::FormFor

  def initialize(meal)
    @meal = meal
  end

  def template
    div(class: 'container') do
      h1 { 'MealForm' }
      p { 'Find me in app/views/components/meal_form_component.rb' }
      bootstrap_form_for(@meal) do |f|
        f.text_field(:name)
        f.text_field(:description)
      end
    end
  end
end
