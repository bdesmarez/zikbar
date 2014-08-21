class CreateDrinkStyles < ActiveRecord::Migration
  def change
    create_table :drink_styles do |t|
      t.string :name

      t.timestamps
    end

    add_index :drink_styles, :name, unique: true
  end
end
