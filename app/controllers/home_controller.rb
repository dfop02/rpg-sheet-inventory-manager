class HomeController < ApplicationController

  def index
    @char = Character.first
    render 'home/home'
  end

end
