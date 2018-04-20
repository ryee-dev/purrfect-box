class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :box_id, :integer
      t.column :name, :varchar
      t.column :review, :text
      t.column :rating, :integer

      t.timestamp
    end
  end
end
