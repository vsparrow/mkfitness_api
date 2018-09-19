class WeightsController < ApplicationController
  before_action :set_user
  before_action :set_user_weight, only: [:show, :update]

  #GET /users/:user_id/weights
  def index
    json_response(@user.weights)
  end

  #GET /users/:user_id/weights/id
  def show
    json_response(@weight)
  end

  #POST /users/:user_id/weight
  def create
    @user.weights.create!(weight_params)
    json_response(@user, :created)
  end

  def update
    @weight.update(weight_params)
    head :no_content
  end

  private
  def weight_params
    params.permit(:user_id, :date, :weight)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_weight
    @weight = @user.weights.find_by!(id: params[:id]) if @user
  end
end
