class TreesController < ApplicationController

	def index

	end

	def getNodes
		nodes = Node.all
		respond_to do |format|
			format.json { render json: nodes }
		end
	end

end
