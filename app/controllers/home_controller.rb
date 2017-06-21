class HomeController < ApplicationController
    before_action :authenticate_user!
  def top
      @msgs = Msg.all
      @users = User.all
      @id = params[:id]
      @post = User.find_by(id:params[:id])
      
  end
  def select
      @users = User.all
      @id = params[:id]
      @post = User.find_by(id:params[:id])
  end
  def create
      @msg = Msg.new(content:params[:content])
      @msg.save
      redirect_to("/#{current_user.id}")
  end
end
