class AddDrinkStyles < SeedMigration::Migration
  def up
    names = ['Beer', 'Whisky', 'Cocktail', 'Soft', 'Wine', 'Coffee']
    names.each do |name|
      DrinkStyle.create(name: name)
    end

  end

  def down
    DrinkStyle.destroy_all
  end
end
