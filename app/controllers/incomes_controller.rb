class IncomesController < ApplicationController
  def index
    @incomes = Income.order("created_at ASC")
	end
 
	def show
	end
 
	def new
	end
 
	def edit
	end
 
	def create
	end
 
	def update
	end
 
	def destroy
	end
end
