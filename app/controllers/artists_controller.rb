class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.includes(photo_attachment: :blob)
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.new(params.require(:artist).permit(:name, :country, :artist_type, :photo))

    if artist.save
      flash.keep[:success] = 'Artist added successfully'
    else
      flash.now[:error] = 'Error: Artist could not be added'
    end
    redirect_to artists_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
