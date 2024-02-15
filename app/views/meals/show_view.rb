# frozen_string_literal: true

class Meals::ShowView < ApplicationView
  def initialize(blog)
    @blog = blog
  end

  def template
    h1 { 'Meals show' }
    p { 'Find me in app/views/meals/show_view.rb' }
  end
end
