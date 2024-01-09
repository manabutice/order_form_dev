class AddTelephoneToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :telephone, :string, comment: "電話番号"
    # Order.update_all(telephone: "000-0000-0000")
    # change_column_null :orders, :telephone, false
  end  
end
