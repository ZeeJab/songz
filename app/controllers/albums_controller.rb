class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(params[:album])
	    if @album.save
	        redirect_to albums_path
		else
			render :new
		end
	end

	def update
		@album = Album.find(params[:id])
		@album.song_ids = params[:@album][:song_ids]

		if @album.update_attributes(params[:album])
			redirect_to @album
		else
			render :edit
		end
	end

	def destroy
		album = Album.find(params[:id])
		album.delete
		redirect_to albums_path
	end
end
