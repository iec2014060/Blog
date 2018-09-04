class UsersController < ApplicationController
  def index
  end
  def new
    @user=User.new
  end
  def create
    @user=User.new(params[:user])
    if @user.save
      redirect_to articles_path,notice: "Welcome #{@user.userid}!you  successfully created an account"

    else
      render 'new'
    end 
  end


end
