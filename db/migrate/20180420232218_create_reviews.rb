class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :name, :varchar
      t.column :review, :varchar
      t.column :rating, :integer
      t.column :box_id, :integer
      t.column :created_on, :datetime, null: false
      t.column :updated_on, :datetime, null: false

    end
  end
end
