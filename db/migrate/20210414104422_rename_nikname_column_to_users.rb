class RenameNiknameColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :nikname, :nickname
  end
end
