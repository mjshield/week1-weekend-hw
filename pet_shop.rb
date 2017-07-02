def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, number)
  return pet_shop[:admin][:total_cash] += number
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  return pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, specific_breed)
# comments made for future reference:
# make a new blank array called pets
  pets = []
#now find some stuff to put into pets (every breed value?)
  pet_shop[:pets].each { |hashes| pets << hashes[:breed] }
#now find some stuff to take out of it (delete value if doesn't = specific_breed?)
  pets.keep_if { |breed| breed == specific_breed }
#now return the new array!
  return pets
end

def find_pet_by_name(pet_shop, specific_name)
  pet = []
  pet_shop[:pets].each { |hashes| pet << hashes[:name] }
  pet.keep_if { |name| name == specific_name }
  return pet[0]
end

def remove_pet_by_name(pet_shop, specific_name)
  pet = []
  pet_shop[:pets].delete_if { |name| name[:name] == specific_name }
  pet_shop[:pets].each { |hashes| pet << hashes[:name]}
  pet.keep_if { |name| name == specific_name }
  return pet[0]
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  return pet_shop[:pets].count
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  return customer[:pets].count 
end
