# frozen_string_literal: true

module Categories
  class ShowView < ApplicationView
    def initialize(category)
      @category = category
    end

    def template
      h1 { @category.name }
      p { 'Açıklama' }
    end
  end
end
