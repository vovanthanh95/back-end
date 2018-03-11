class AddPasswordConfirmToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :password_confirm, :string
  end
end
