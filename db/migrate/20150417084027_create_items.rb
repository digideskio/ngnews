class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :body
      t.string :kind
      t.string :source
      t.boolean :public

      t.timestamps null: false
    end
  end
end
