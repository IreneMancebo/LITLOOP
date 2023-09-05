class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @favorite_booknooks = @user.favorite_nooks
        @created_booknooks = @user.nooks
        @created_footnotes = @user.footnotes
    end
end
