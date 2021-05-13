class TasksController < ApplicationController
  def create
    # @item = Task.new(item_params)
    # @item.save
    # redirect_to root_path

    # タスク作成時に未読の情報を保存する
    task = Task.create(item: params[:item])
    # レスポンスをJSONに変更してAjaxを実現させる
    render json:{ task: task }
  end

  private
  def item_params
    params.require(:task).permit(:item).merge(list_id: params[:list_id])
  end
end
