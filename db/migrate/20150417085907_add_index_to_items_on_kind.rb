class AddIndexToItemsOnKind < ActiveRecord::Migration
  def change
    add_index :items, :kind
  end
end
