class RockController < ApplicationController
  
  def roll
    @artists = Artist.all
  end
  
  def new
    
    #get the deets
    
    @artists = Artist.new
    @album = Album.new
    @song = Song.new
    
  end
  
  def create
    
    # use them deets to get info from gracenote
    
    spec = {:clientID => "", :clientTag => ""}
    obj = Gracenote.new(spec)
    obj.registerUser

    # for song/artist info

    data1 =  obj.findTrack(params[:artist], "", params[:song], '0')

    @artist = Artist.find_or_create_by(name: data1[0][:album_artist_name])

    @album = Album.find_or_create_by(name: data1[0][:album_title], artist_id: @artist.id)

    @song = Song.find_or_create_by(name: data1[0][:tracks][0][:track_title], artist_id: @artist.id, album_id: @album.id)

    redirect_to root_path
  end
  
  
end
