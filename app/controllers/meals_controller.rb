# frozen_string_literal: true

class MealsController < ApplicationController
  layout -> { ApplicationLayout }
  
  def index
    render Meals::IndexView.new
  end

  def show
    render Meals::ShowView.new
  end
end
