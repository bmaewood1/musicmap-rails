class ApplicationController < ActionController::API

    def current_user
        @user = User.find_by(id: params[:id])
    end

end
