# frozen_string_literal: true

class MealFormComponent < ApplicationComponent
  include BootstrapForm::ActionViewExtensions::FormHelper
  include Phlex::Rails::Helpers::FormFor

  def initialize(meal)
    @meal = meal
  end

  def template
    div do
      bootstrap_form_for(@meal) do |f|
        f.text_field(:name)
        f.text_field(:description)
        f.collection_select(:category_id, Category.all, :id, :name)
        f.submit
      end
    end
  end
end
