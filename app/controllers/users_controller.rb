class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def show
    @user=User.find(params[:id])
    #rescue ActiveRecord::RecordNotFound
    #redirect_to :controller => "static_pages", :action => "home"
    #return
  end

  def create
    @user=User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
