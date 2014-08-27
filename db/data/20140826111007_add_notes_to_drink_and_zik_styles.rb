class AddNotesToDrinkAndZikStyles < SeedMigration::Migration
  def up
    DrinkStyle.find_each do |drink|
      drink.update_attribute(:note, rand(0..5))
    end

    ZikStyle.find_each do |zik|
      zik.update_attribute(:note, rand(0..5))
    end
  end

  def down
    DrinkStyle.find_each do |drink|
      drink.update_attribute(:note, nil)
    end

    ZikStyle.find_each do |zik|
      zik.update_attribute(:note, nil)
    end
  end
end
