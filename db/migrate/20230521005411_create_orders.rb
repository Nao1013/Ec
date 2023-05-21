class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :first_name_kana, null: false
      t.string :last_name_kana, null: false
      t.string :post_code, null: false
      t.string :address1, null: false
      t.string :address2, null: false
      t.string :address3, null: false
      t.integer :shipping_cost, null: false
      t.integer :payment_method, null: false, default: 0
      t.integer :order_status, null: false, default: 0

      t.timestamps
    end
  end
end
