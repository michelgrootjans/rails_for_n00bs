Zombie.delete_all

10.times do
  Zombie.create(name: Faker::Name.name)
end