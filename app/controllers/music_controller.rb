class MusicController < ApplicationController
  def show
    @songs = Song.all.order(created_at: :desc)
  end

  def audio_player
    @song = Song.find(params[:song_id])
    @song.streams.create(user: current_user)
  end
end
