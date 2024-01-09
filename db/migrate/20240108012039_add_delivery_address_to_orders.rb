class AddDeliveryAddressToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :delivery_address, :string, comment: "お届け先住所"
    # Order.update_all(delivery_address: "Default Address")
    # change_column_null :orders, :delivery_address, false
  end  
end
