class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :destroy, :edit, :update]

  def index
    @artists = Artist.all
  end
  
  def show
  end

  def new
  end

  def create
    Artist.create!(artist_params)
    redirect_to artists_path
  end

  def destroy
    @artist.destroy 
    redirect_to artists_path
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    flash.notice = "#{@artist.name} Updated!"
    redirect_to artists_path
  end

  private
  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.permit(:name)
  end
end