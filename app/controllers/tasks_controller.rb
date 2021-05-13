class TasksController < ApplicationController
  def create
    @item = Task.new(item_params)
    @item.save
    redirect_to root_path
  end

  private
  def item_params
    params.require(:task).permit(:item).merge(list_id: params[:list_id])
  end
end
