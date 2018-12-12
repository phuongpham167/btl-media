class StaticPagesController < ApplicationController
  def home
    @users = User.all
    @rooms = Room.all
  end
end
