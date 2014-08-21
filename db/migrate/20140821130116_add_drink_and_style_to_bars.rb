class AddDrinkAndStyleToBars < ActiveRecord::Migration
  def change
    add_reference :bars, :drink_style, index: true
    add_reference :bars, :zik_style, index: true
  end
end
