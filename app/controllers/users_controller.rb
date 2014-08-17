class UsersController < ApplicationController

  def index
    @users = User.all
  end

end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @user = User.find(params[:id])
    end

  def listing_params
      params.require(:user).permit(:name, :image)
    end

