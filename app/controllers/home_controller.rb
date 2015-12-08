class HomeController < ApplicationController

  def welcome
    @categories = Category.order(:name)
    @most_popular = Project.sort_by_pledges(Project.all).first(3)
    @finishing_soon = Project.sort_by_finishing_soon(Project.all).first(3)
  end


end