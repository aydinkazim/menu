# frozen_string_literal: true

class CategoryCardComponent < ApplicationComponent
  def initialize(category)
    @category = category
  end

  def template
    div(class: 'card') do
      div(class: 'card-body') do
        div(class: 'card-title') do
          h1 { @category.name }
        end
        div(class: 'card-text') do
          p { 'Açıklama' }
        end
        a(href: "/categories/#{@category.id}", class: 'btn btn-primary') { 'İncele' }
      end
    end
  end
end
