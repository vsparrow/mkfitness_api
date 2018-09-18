class SugarsController < ApplicationController
  before_action :set_user
  before_action :set_user_sugar, only: [:show]

  #GET /users/:user_id/sugars
  def index
    json_response(@user.sugars)
  end

  #GET /users/:user_id/sugars/id
  def show
    json_response(@sugar)
  end

  #POST /users/:user_id/sugar
  def create
    @user.sugars.create!(sugar_params)
    json_response(@user, :created)
  end

  private
  def sugar_params
    params.permit(:user_id, :date, :ate_sugar)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_sugar
    @sugar = @user.sugars.find_by!(id: params[:id]) if @user
  end
end #controller
