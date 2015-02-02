class ActorsController < ApplicationController

  def index

    @actors = Actor.all

  end

  def show

    @actor = Actor.find(params[:id])

  end

  def destroy

    @actor = Actor.find(params[:id])
    @actor.destroy

  end



end
