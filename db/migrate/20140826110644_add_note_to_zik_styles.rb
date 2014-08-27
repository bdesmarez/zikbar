class AddNoteToZikStyles < ActiveRecord::Migration
  def change
    add_column :zik_styles, :note, :integer, default: :nil
  end
end
