class RemovePasswordconfirmFromEmployee < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :passwordconfirm, :string
  end
end
