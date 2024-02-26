# frozen_string_literal: true

module Categories
  class NewView < ApplicationView
    def initialize(category)
      @category = category
    end

    def template
      render CategoryFormComponent.new(@category)
    end
  end
end
