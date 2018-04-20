class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.column :name, :varchar
      t.column :size, :varchar
      t.column :color, :varchar
      t.column :price, :decimal, :precision => 8, :scale => 2
    end
  end
end
