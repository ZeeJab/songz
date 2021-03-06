class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.song_ids = params[:@artist][:song_ids]
    if @artist.update_attributes(params[:artist])
      redirect_to artists_path
    else
      render :edit
    end  
  end

  def create
    @artist = Artist.new(params[:artist]) 
    if @artist.save
      redirect_to artists_path
    else
      render :new
    end
  end


  def destroy
    artist = Artist.find(params[:id])
    artist.delete
    redirect_to artists_path
  end
end
