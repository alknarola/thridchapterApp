class UsersController < ApplicationController

  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page], :per_page => 10).order('created_at DESC')

  end


  def new
    @user=User.new
  end

  #show the current user list
  def show
    @user=User.last
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

  # Before filters
  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  #edit method of user
  def edit
    @user=User.last
  end

  def update
    @user = User.last
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  #destroying userby the admin
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  # Confirms the correct user.
  def correct_user
    @user = User.last
    redirect_to(root_url) unless current_user?(@user)
  end

  #private method for the create new user
  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end


end
