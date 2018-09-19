class EllipticalsController < ApplicationController
  before_action :set_user
  before_action :set_user_elliptical, only: [:show, :update]

  #GET /users/:user_id/ellipticals
  def index
    json_response(@user.ellipticals)
  end

  #GET /users/:user_id/ellipticals/id
  def show
    json_response(@elliptical)
  end

  #POST /users/:user_id/elliptical
  def create
    @user.ellipticals.create!(elliptical_params)
    json_response(@user, :created)
  end

  def update
    @elliptical.update(elliptical_params)
    head :no_content
  end

  private
  def elliptical_params
    params.permit(:user_id, :date, :minutes, :distance)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_elliptical
    @elliptical = @user.ellipticals.find_by!(id: params[:id]) if @user
  end
end
#
# t.integer :user_id
# t.date :date
# t.integer :minutes
# t.float :distance
