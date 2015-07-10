  class MoviesController < ApplicationController
    before_action :find_movie, only: [:edit, :update, :show, :destroy]


    # to display a collection of movies
    def index
      @movies = Movie.all
    end

    #display form to create a new movie
    def new
      @movie = Movie.new
      
    end

    # the logic to store new data into the database
    def create
      @movie = Movie.new(movie_params)
      if @movie.save 
        # it returned true. Do stuff
        redirect_to movies_path
    else
        # it returned false. Do different stuff
      render :new
     end
    end
        

    
    # to display a form to update an existing movie
    def edit
    end

    # the logic to alter the data of an existing movie in the database
    def update
      if @movie.update(movie_params)
        redirect_to movies_path
      else
        render :edit
      end
    end


    # to display data from a specific movie
    def show
    end

    #to remove data from the database
    def destroy
      @movie.destroy
      redirect_to movies_path
    end

    private

    def movie_params
      params.require(:movie).permit(:title, :released_at)
      
    end

    def find_movie
      @movie = Movie.find(params[:id])

    end
  end