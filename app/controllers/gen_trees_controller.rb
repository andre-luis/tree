class GenTreesController < ApplicationController

  #before_action :index, :show

	def index
   basic_auth
	end



  def show
    @tree = GenTree.find(params[:id])
  end

  def getNodes
    nodes = Node.where(gen_tree_id: params[:id])
    respond_to do |format|
      format.json { render json: nodes }
    end
  end

  private
  def basic_auth
    uid = session[:user_id]
    unless uid
      flash[:error] = t 'security_breach_msg'
      redirect_to root_path
    else
      @user = User.find(uid)
    end
  end

end
