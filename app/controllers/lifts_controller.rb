class LiftsController < ApplicationController
  before_action :set_user
  before_action :set_user_lift, only: [:show, :update]

  #GET /users/:user_id/lifts
  def index
    json_response(@user.lifts)
  end

  #GET /users/:user_id/lifts/id
  def show
    json_response(@lift)
  end

  #POST /users/:user_id/lift
  def create
    @user.lifts.create!(lift_params)
    json_response(@user, :created)
  end

  def update
    @lift.update(lift_params)
    head :no_content
  end

  private
  def lift_params
    params.permit(:user_id, :date, :notes)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_lift
    @lift = @user.lifts.find_by!(id: params[:id]) if @user
  end

end
