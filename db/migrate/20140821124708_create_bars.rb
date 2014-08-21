class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end

    add_index :bars, [:name, :city, :country], unique: true
  end
end
