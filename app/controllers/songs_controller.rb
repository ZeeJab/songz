class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(params[:song])    
    if @song.save
        redirect_to songs_path
    else
      render :new
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.delete
    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    @song.artist_ids = params[:@song][:artist_ids]
    @song.album_ids = params[:@song][:album_ids]
    @song.genre_ids = params[:@song][:genre_ids]

    if @song.update_attributes(params[:song])
      redirect_to songs_path
    else
      render :edit
    end  
  end
end
