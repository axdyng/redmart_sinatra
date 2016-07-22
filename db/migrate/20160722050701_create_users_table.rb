class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string  :name, null: false, limit: 25
      t.string  :email, null: false
      t.string  :address
      t.string  :password, null: false, limit: 50
      t.integer :cc_number

      t.timestamps
    end
  end
end
