class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  #The show page is the user home page after a successful login
  def show
    @user = User.find(params[:id])
    @title = @user.email
  end
end
