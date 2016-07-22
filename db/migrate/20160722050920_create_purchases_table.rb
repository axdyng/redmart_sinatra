class CreatePurchasesTable < ActiveRecord::Migration
  def change
    create_table(:purchases) do |t|
      #references automatically creates _id to the argument
      t.references :user, null: false
      t.references :product, null: false
      t.column(:status, :boolean, default: false)

      t.timestamps()
    end
  end
end
