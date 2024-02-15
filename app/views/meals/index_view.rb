# frozen_string_literal: true

class Meals::IndexView < ApplicationView
  def template
    h1 { "Meals index" }
    p { "Find me in app/views/meals/index_view.rb" }
  end
end
