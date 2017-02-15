class SongsController < ApplicationController

  def index
    @songs = Song.all 

  end 

  def create 
    @song = Song.new(name: params[:name], artist: params[:artist], rating: params[:rating])

    @song.save
    render :show 
  end 

  def show
    @song = Song.find_by(id: params[:id])
  end 

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(
      name: params[:name],
      artist: params[:artist],
      rating: params[:rating]
      )

  end 

  def destroy
    @song = Song.find_by(id: params[:id])
    @song.destroy

    render :index
  end 
end
