class RockController < ApplicationController
  def roll
  end


  def new
    @song = Song.new
    @artists = Artist.all
  end

  # POST /songs
  # POST /songs.json
  def create
    byebug
    @song = Song.new
    @artist = Artist.new
    @album = Album.new
    @artists = Artist.all
    spec = {:clientID => "2000896", :clientTag => "63F1E7CAE797748477AC696A41F68844"}
    obj = Gracenote.new(spec)
    obj.registerUser
    track = obj.findTrack(@song.artist.name, "", @song.name, '0').inspect
    album = obj.findTrack(@song.artist.name, "", @song.name, '0').inspect
    byebug
    

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end
end