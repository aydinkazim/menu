# frozen_string_literal: true

class FooterComponent < ApplicationComponent
  def template
    footer(class: 'py-3') do
      hr
      p(class: 'text-center') { Time.now.year }
    end
  end
end
