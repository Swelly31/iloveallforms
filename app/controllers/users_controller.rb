class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    #User.new(username: params["username"], email: params["email"], bio: params["bio"]).save 
    #^Utiliser avec le <form>

    #@user = User.new(username: params["username"], email: params["email"], bio: params["bio"]).save
    #^Utiliser avec le <form_tag>

    @user = User.new(username: params["user"]["username"], email: params["user"]["email"], bio: params["user"]["bio"]).save
    #^Utiliser avec le <form_for>
  end
end
