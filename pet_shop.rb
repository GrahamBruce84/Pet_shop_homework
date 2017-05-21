def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, added_pets)
  pet_shop[:admin][:pets_sold] += added_pets
end

def stock_count(pet_shop)
  pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, breed)
  array_of_pets_by_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      array_of_pets_by_breed.push(pet)
    end
  end
  return array_of_pets_by_breed
end

def find_pet_by_name(pet_shop, dog_name)
  found = []
  for pet in pet_shop[:pets]
    if pet[:name] == dog_name
      found.push(pet)
    end
  end
  return found.first
end

def remove_pet_by_name(pet_shop, dog_name)
  for pet in pet_shop[:pets]
    if pet[:name] == dog_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customer)
  customer[:pets].count()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] <= new_pet[:price]
    return false
  else
    return true
  end
end

# def sell_pet_to_customer(pet_shop, pet, customer)
# I tried this one and ended up in the land of Oz! I think I will need help going through this. Sorry I couldnt get it all finished.
# end




