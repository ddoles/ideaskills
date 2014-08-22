class UsersController < ApplicationController

  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @user = User.find(params[:id, :image])
    end

  def listing_params
      params.require(:user).permit(:name, :image)
    end
end
