class ChangePriceFloatToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :bikes, :daily_price, :integer
    change_column :rentals, :total_price, :integer
  end
end
