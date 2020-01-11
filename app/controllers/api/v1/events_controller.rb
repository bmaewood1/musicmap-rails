class Api::V1::EventsController < ApplicationController
    def index
        @events = Event.all
        render json: @events
      end
    
      def show
        @events = Event.find_by(id: params[:id])
      end
    
      def create
        @event = Event.find_or_create_by(event_params)
        render json: @event
      end

      private

      def event_params
        params.require(:event).permit(:song_id, :date, :venue, :category, :songkick_url)
      end
end
