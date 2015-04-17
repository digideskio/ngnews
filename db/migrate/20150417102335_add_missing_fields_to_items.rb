class AddMissingFieldsToItems < ActiveRecord::Migration
  def change
    add_column :items, :start_date, :date
    add_column :items, :end_date, :date
    add_column :items, :sub_category, :string
    rename_column :items, :kind, :category
  end
end
