class AddNotesToDrinkAndZikStyles < SeedMigration::Migration
  def up
    DrinkStyle.all.each do |drink|
      drink.update_attribute(:note,rand(0..5))
    end
    ZikStyle.all.each do |zik|
      zik.update_attribute(:note,rand(0..5))
    end
  end

  def down
    DrinkStyle.all.each do |drink|
      drink.update_attribute(:note,nil)
    end
    ZikStyle.all.each do |zik|
      zik.update_attribute(:note,nil)
    end
  end
end
