class CreateProductsTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string      :name, null: false
      t.decimal     :price, null: false, precision: 10, scale: 2
      t.text        :description, null: false
      t.references  :category
      t.references  :brand

      t.timestamps
    end
  end
end
