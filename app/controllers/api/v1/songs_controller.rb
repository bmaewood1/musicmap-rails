class Api::V1::SongsController < ApplicationController

    def index
        @songs = Song.all
        render json: @songs
      end
    
      def show
        @song = Song.find_by(id: params[:id])
      end
    
      def create
        @song = Song.find_or_create_by(song_params)    
      end

      def destroy
        @song = Song.find_by(id: params[:id])
        @song.destroy
        @songs = Song.all
        render json: @songs
      end

      private

      def song_params
        params.require(:song).permit(:playlist_id, :title, :artist, :spotify_url, :track_id, :spotify_artistId, :date, :venue, :category, :songkick_url, :lat, :lng)
      end


end
