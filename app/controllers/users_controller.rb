class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate


  def index
    @users = User.all
  end
  def new
    @user = User.new
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Bienvenue sur votre nouveau compte !"
    else
      render "new"
    end
  end
  
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_url, notice: 'Le compte est mis a jour.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Le compte est supprime.' }
      format.json { head :no_content }
    end
  end

private

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end

  def set_user
      @user = User.find(params[:id])
  end

end
