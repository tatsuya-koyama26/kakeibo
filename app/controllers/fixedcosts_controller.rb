class FixedcostsController < ApplicationController
  def index
    @fixedcosts = Fixedcost.order("created_at ASC")
  end

  def show
    @fixedcost = Fixedcost.find(params[:id])
  end

  def new
    @fixedcost = Fixedcost.new
  end

  def edit
    @fixedcost = Fixedcost.find(params[:id])
  end

  def create
    @fixedcost = Fixedcost.new(fixedcosts_params)
    if @fixedcost.save
      redirect_to @fixedcost, notice: "収入科目を登録しました"
    else
      render "new"
    end
  end

  def update
    @fixedcost = Fixedcost.find(params[:id])
    @fixedcost.update(fixedcosts_params)
    if @fixedcost.save
      redirect_to @fixedcost, notice: "収入科目を編集しました"
    else
      render "new"
    end
  end

  def destroy
    @fixedcost = Fixedcost.find(params[:id])
    @fixedcost.destroy
    redirect_to :fixedcosts, notice: "科目を削除しました。"
  end

  private

  def fixedcosts_params
    params.require(:fixedcost).permit(:name, :description)
  end
end
