class ListsController < ApplicationController
  # topページ(リスト一覧表示ページ)
  def index
    @lists = List.all
  end

  # リスト新規作成ページ
  def new
    @list = List.new
  end

  # newアクションで作成したデータを保存
  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  # リスト詳細ページ
  def show
    @list = List.find(params[:id])
  end

  # リスト編集ページ
  # def edit
  #   @list = List.find(params[:id])
  # end

  # @listに変数がある場合の編集処理
  # def update
  #   @list = list.find(params[:id])
  #   if @list.update(list_params)
  #     redirect_to list_path
  #   else
  #     redirect_toedit_list_path
  #   end
  # end

  # リストを削除する処理
  # def destroy
  #   @list = List.find(params[:id])
  #   @list.destroy
  #   redirect_to list_path
  # end

  private

  # リストの情報の保存を許可する
  def list_params
    params.require(:list).permit(:title)
  end

end
