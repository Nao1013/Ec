class CreateShippingAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :shipping_addresses do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :first_name_kana, null: false
      t.string :last_name_kana, null: false
      t.string :post_code, null: false
      t.string :address1, null: false
      t.string :address2, null: false
      t.string :address3, null: false

      t.timestamps
    end
  end
end
