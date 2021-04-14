class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      # todoリストのタイトルのカラムを作成
      t.string :title,    null: false
      # user_idカラムを外部キー制約でつける
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
