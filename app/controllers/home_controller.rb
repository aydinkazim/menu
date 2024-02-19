# frozen_string_literal: true

class HomeController < ApplicationController
  layout -> { ApplicationLayout }
  def index
    render Home::IndexView
  end
end
