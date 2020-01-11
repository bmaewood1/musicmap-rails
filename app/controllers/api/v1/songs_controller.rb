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

      private

      def song_params
        params.require(:song).permit(:playlist_id, :title, :artist, :spotify_url)
      end

end
