class AddEmailToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :email, :string, comment: "メールアドレス"
    # Order.update_all(email: "default@email.com")
    # change_column_null :orders, :email, false
  end  
end
