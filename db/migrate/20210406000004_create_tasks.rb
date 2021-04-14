class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      # リストの項目のカラムを作成
      t.string :item,      null: false
      # list_idカラムを外部キー制約でつける
      t.references :list,  foreign_key: true

      t.timestamps
    end
  end
end
