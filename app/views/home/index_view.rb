# frozen_string_literal: true

module Home
  class IndexView < ApplicationView
    def template
      h1 { 'Yakut Restoranları 💎' }
    end
  end
end
