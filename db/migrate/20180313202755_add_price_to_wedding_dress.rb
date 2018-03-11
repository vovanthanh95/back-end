class AddPriceToWeddingDress < ActiveRecord::Migration[5.1]
  def change
    add_column :wedding_dresses, :price, :string
  end
end
