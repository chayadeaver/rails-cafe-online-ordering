class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :menu_id
      t.integer :category_id
      t.integer :cart_id
    end
  end
end
