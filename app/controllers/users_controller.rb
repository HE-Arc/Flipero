class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:getcurrentuser]
    respond_to :js

    def getcurrentuser
        render :json => current_user
    end
end
