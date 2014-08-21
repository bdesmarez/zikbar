class AddBars < SeedMigration::Migration
  def up
    Bar.create(name: "Carré des Halles", city: "Lille", country: "fr", drink_style: DrinkStyle.find_by_name("Beer"), zik_style: ZikStyle.find_by_name("Metal"))
    Bar.create(name: "Black Night", city: "Lille", country: "fr", drink_style: DrinkStyle.find_by_name("Beer"), zik_style: ZikStyle.find_by_name("Metal"))
    Bar.create(name: "Atomik", city: "Lille", country: "fr", drink_style: DrinkStyle.find_by_name("Beer"), zik_style: ZikStyle.find_by_name("Metal"))
    Bar.create(name: "L'Irlandais", city: "Lille", country: "fr", drink_style: DrinkStyle.find_by_name("Beer"), zik_style: ZikStyle.find_by_name("Brin commercial"))
    Bar.create(name: "Le Scottland", city: "Lille", country: "fr", drink_style: DrinkStyle.find_by_name("Beer"), zik_style: ZikStyle.find_by_name("Brin commercial"))
    Bar.create(name: "Tir Na Nog", city: "Lille", country: "fr", drink_style: DrinkStyle.find_by_name("Beer"), zik_style: ZikStyle.find_by_name("Folk"))
    Bar.create(name: "La Plage", city: "Lille", country: "fr", drink_style: DrinkStyle.find_by_name("Cocktail"), zik_style: ZikStyle.find_by_name("Brin commercial"))
    Bar.create(name: "La Capsule", city: "Lille", country: "fr", drink_style: DrinkStyle.find_by_name("Whisky"), zik_style: ZikStyle.find_by_name("Rock"))
    Bar.create(name: "L'Arrière Pays", city: "Lille", country: "fr", drink_style: DrinkStyle.find_by_name("Wine"))
  end

  def down
    Bar.destroy_all
  end
end
