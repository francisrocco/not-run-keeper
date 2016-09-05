class RoutesController < ApplicationController

  def show
    @route = Route.find(params[:id])
  end

  def index
    @routes = Route.all
  end

end
