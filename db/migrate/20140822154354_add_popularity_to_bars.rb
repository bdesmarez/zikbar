class AddPopularityToBars < ActiveRecord::Migration
  def change
    add_column :bars, :popularity, :decimal, precision: 5, scale: 2, default: 0
  end
end
