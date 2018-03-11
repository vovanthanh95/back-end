class CreateWeddingDresses < ActiveRecord::Migration[5.1]
  def change
    create_table :wedding_dresses do |t|
      t.string :name
      t.integer :size
      t.string :color

      t.timestamps
    end
  end
end
