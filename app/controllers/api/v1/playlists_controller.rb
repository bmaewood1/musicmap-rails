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

      def my_playlists
        @playlists = Playlist.find_by(user_id: @user.id)
        render json: @playlists
      end

      def destroy
        @playlist = Playlist.find_by(id: params[:id])
        @playlist.destroy
        @playlists = Playlist.all
        render json: @playlists
      end

      private

      def playlist_params
        params.require(:playlist).permit(:user_id, :location, :spotify_playlistId)
      end
end

