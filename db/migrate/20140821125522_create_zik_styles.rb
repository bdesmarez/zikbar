class CreateZikStyles < ActiveRecord::Migration
  def change
    create_table :zik_styles do |t|
      t.string :name

      t.timestamps
    end

    add_index :zik_styles, :name, unique: true
  end
end
