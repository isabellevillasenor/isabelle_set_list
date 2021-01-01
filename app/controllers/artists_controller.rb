class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end
  
  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def create
    Artist.create!(artist_params)
    redirect_to artists_path
  end

  def destroy
    Artist.destroy(params[:id])
    redirect_to artists_path
  end

  private
  def artist_params
    params.permit(:name)
  end
end