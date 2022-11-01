class HomeController < ApplicationController
  def index
    @char = Character.last
    render 'home/home'
  end
end
