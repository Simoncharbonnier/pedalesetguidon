class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.date :start_at
      t.date :end_at
      t.float :total_price
      t.string :status
      t.references :users, null: false, foreign_key: true
      t.references :bikes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
