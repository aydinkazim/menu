# frozen_string_literal: true

class CategoryFormComponent < ApplicationComponent
  include BootstrapForm::ActionViewExtensions::FormHelper
  include Phlex::Rails::Helpers::FormFor

  def initialize(category)
    @category = category
  end

  def template
    div do
      bootstrap_form_for(@category) do |f|
        f.text_field(:name)
        f.submit
      end
    end
  end
end
