class ActorsController < ApplicationController

  def new_form
  end

  def create_row

    @actor = Actor.new

    @actor.name = params["the_name"] #These come from the input 'name' field in the new form
    @actor.dob = params["the_dob"] #These come from the input 'name' field in the new form
    @actor.bio = params["the_bio"] #These come from the input 'name' field in the new form
    @actor.image_url = params["the_image_url"] #These come from the input 'name' field in the new form

    @actor.save

  end

  def edit_form

    @actor = Actor.find(params[:id])

  end

  def update_row

    @actor = Actor.find(params[:id]) #This line is the only difference between it and create_row

    @actor.name = params["the_name"] #These come from the input 'name' field in the new form
    @actor.dob = params["the_dob"] #These come from the input 'name' field in the new form
    @actor.bio = params["the_bio"] #These come from the input 'name' field in the new form
    @actor.image_url = params["the_image_url"] #These come from the input 'name' field in the new form

    @actor.save

  end

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
