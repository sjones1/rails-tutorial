class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    render 'new'
    else    
    render 'new'
    end
  end

  def destroy
  end
end