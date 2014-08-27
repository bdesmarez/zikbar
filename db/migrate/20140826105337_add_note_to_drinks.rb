class AddNoteToDrinks < ActiveRecord::Migration
  def change
    add_column :drink_styles, :note, :integer, default: :nil
  end
end
