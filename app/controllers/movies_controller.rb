class MoviesController < ApplicationController

  # CREATE
  def new_form
    render("movies/new_form.html.erb")
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.image_url = params[:image_url]

    @movie.save

    render("/movies/show_details")

  end

  # READ
  def index
    @movies = Movie.all
    render("movies/index.html.erb")
  end

  def show
    @movie = Movie.find(params[:id])
    render("/movies/show_details.html.erb")
  end

  #UPDATE

  def edit_form
  @movie = Movie.find(params[:id])
  render("/movies/edit_form.html.erb")
  end

  def update_row
  @movie = Movie.find(params[:id])

  @movie.title = params[:title]
  @movie.year = params[:year]
  @movie.duration = params[:duration]
  @movie.image_url = params[:image_url]

  @movie.save
  render("/movies/show_details.html.erb")
  end

  # DELETE
  def delete
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to("/movies")
  end

end
