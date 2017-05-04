class ActorsController < ApplicationController

  # CREATE
  def new_form
    render("actors/new_form.html.erb")
  end

  def create_row
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    render("/actors/show_details")

  end

  # READ
  def index
    @actors = Actor.all
    render("actors/index.html.erb")
  end

  def show
    @actor = Actor.find(params[:id])
    render("/actors/show_details.html.erb")
  end

#UPDATE

def edit_form
  @actor = Actor.find(params[:id])
  render("/actors/edit_form.html.erb")
end

def update_row
  @actor = Actor.find(params[:id])

  @actor.dob = params[:dob]
  @actor.name = params[:name]
  @actor.bio = params[:bio]
  @actor.image_url = params[:image_url]

  @actor.save
  render("/actors/show_details.html.erb")
end

  # DELETE
  def delete
    @actor = Actor.find(params[:id])
    @actor.destroy
    redirect_to("/actors")
  end

end
