class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :passwordconfirm
      t.timestamps
    end
  end
end
