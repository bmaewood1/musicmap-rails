require 'rest_client'

class Api::V1::PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
        render json: @playlists
      end
    
      def show
        @playlist = Playlist.find_by(id: params[:id])
      end
    
      def create
        @playlist = Playlist.find_or_create_by(playlist_params)
        render json: @playlist
      end

      private

      def playlist_params
        params.require(:playlist).permit(:user_id, :location)
      end
end

