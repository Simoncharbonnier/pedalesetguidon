class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string :bike_name
      t.string :category
      t.float :daily_price
      t.string :gender
      t.string :location
      t.float :size
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
