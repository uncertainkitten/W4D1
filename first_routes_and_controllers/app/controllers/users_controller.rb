class UsersController < ApplicationController
  def index
    users = User.all
    if users[2][:name] == "UserThree"
      render plain: "UserThree was here!"
    else
      render json: users
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages,
      status: 418
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render plain:  'DESTROYED!!!!!!!!!111111'
    else
      render json: user.errors.full_messages,
      status: 418
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
