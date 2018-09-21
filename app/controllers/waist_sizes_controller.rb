class WaistSizesController < ApplicationController
  before_action :set_user
  before_action :set_user_waist_size, only: [:show]

  #GET /users/:user_id/waist_sizes
  def index
    json_response(@user.waist_sizes)
  end

  #GET /users/:user_id/waist_sizes/id
  def show
    json_response(@waist_size)
  end

  #POST /users/:user_id/waist_size
  def create
    @user.waist_sizes.create!(waist_size_params)
    json_response(@user, :created)
  end

  private
  def waist_size_params
    params.permit(:user_id, :date, :inches)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_waist_size
    @waist_size = @user.waist_sizes.find_by!(id: params[:id]) if @user
  end
end
