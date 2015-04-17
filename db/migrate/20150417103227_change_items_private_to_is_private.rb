class ChangeItemsPrivateToIsPrivate < ActiveRecord::Migration
  def change
    rename_column :items, :public, ;:is_public
  end
end
