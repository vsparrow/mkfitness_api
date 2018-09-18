class CarbsController < ApplicationController
  before_action :set_user
  before_action :set_user_carb, only: [:show]

  #GET /users/:user_id/carbs
  def index
    json_response(@user.carbs)
  end

  #GET /users/:user_id/carbs/id
  def show
    json_response(@carb)
  end

  #POST /users/:user_id/carb
  def create
    @user.carbs.create!(carb_params)
    json_response(@user, :created)
  end

  private
  def carb_params
    params.permit(:user_id, :date, :time, :stop_eat_at_x)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_carb
    @carb = @user.carbs.find_by!(id: params[:id]) if @user
  end
end
