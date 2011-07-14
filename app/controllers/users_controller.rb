class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  #The show page is the user home page after a successful login
  def show
    @user = current_user
    @event = @user.events.last
    @title = @user.email
  end
end
