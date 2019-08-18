class IncomesController < ApplicationController
  def index
    @incomes = Income.order("created_at ASC")
  end

  def show
    @income = Income.find(params[:id])
  end

  def new
    @income = Income.new
  end

  def edit
    @income = Income.find(params[:id])
  end

  def create
    @income = Income.new(incomes_params)
    if @income.save
			redirect_to @income, notice: "収入科目を登録しました"
		else
			render "new"
		end
  end

  def update
  end

  def destroy
  end

  private

  def incomes_params
    params.require(:income).permit(:name, :description)
  end
end
