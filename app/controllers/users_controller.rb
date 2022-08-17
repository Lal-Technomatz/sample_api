class UsersController < ApplicationController

  def index
    if params[:role].present?
      @users = User.where(role: params[:role])
    else
      @users = User.all
    end
    render json: { success: true, users: @users }
  end

  def show
    @user = User.find(params[:id])
    render json: { success: true, user: @user }
  end

  def create
    @user = User.create(user_params)
    render json: { success: true, user: @user}
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: { success: true, user: @user }
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy if @user.present?
    render json: { success: true, message: "Data deleted Successfully"}
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :gender, :mob_no, :role, :address, :price, :rating)
  end
end
