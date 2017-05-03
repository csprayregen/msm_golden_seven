class DirectorsController < ApplicationController

  # CREATE
  def new_form
    render("directors/new_form.html.erb")
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("/directors/show_details")

  end

  # READ
  def index
    @directors = Director.all
    render("directors/index.html.erb")
  end

  def show
    @director = Director.find(params[:id])
    render("/directors/show_details.html.erb")
  end

  # DELETE
  def delete
    @director = Director.find(params[:id])
    @director.destroy
    redirect_to("/directors")
  end


end
