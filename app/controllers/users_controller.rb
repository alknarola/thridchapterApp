class UsersController < ApplicationController
  def new
    @user=User.new
  end

#show the current user list
  def show
    @user=User.last
    #@user=User.find_by_id(298486374)

  end

#it will create the new user(signup)
  def create
    @user=User.new(user_params)
    if @user.save
      log_in @user
      flash[:success]="Welcome to gravter avtar App!."
      redirect_to @user
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

end
