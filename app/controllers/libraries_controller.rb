class LibrariesController < ApplicationController

  def index 
    @albums = Album.all
  end
end
