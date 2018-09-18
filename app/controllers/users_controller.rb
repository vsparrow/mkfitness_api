class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  #GET /users
  def index
    @users = User.all
    json_response(@users)
  end

  #POST /users
  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  # /GET /users/:id
  def show
    json_response(@user)
  end

  #no update or delete by design

  private

  def user_params
    #whitelist params
    params.permit(:firstname, :lastname, :username)
  end

  def set_user
    @user = User.find(params[:id])
  end
end #UsersController
