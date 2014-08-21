class AddZikStyles < SeedMigration::Migration
  def up
    names = ['Metal', 'Rock', 'Folk', 'Prog', 'Classic', 'Hip Hop', 'Lambada', 'Electro', 'Brin commercial']
    names.each do |name|
      ZikStyle.create(name: name)
    end

  end

  def down
    ZikStyle.destroy_all
  end
end
