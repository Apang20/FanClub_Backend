# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cart.destroy_all
CartItem.destroy_all
Item.destroy_all
User.destroy_all


#USER
user1 = User.create(first_name: "Hayao", last_name: "Miyazaki", email: "hayaom@gmail.com", billing_address: "1-1-83 Shimorenjaku, Mitaka
Tokyo 181-0013", shipping_address: "1-1-83 Shimorenjaku, Mitaka
Tokyo 181-0013", phone_number: "123-456-7890", password: "totoro")

#ITEM
item1 = Item.create(name: "My Neighborhood Totoro Sleeping Bag", image: "https://images-na.ssl-images-amazon.com/images/I/61Rd9jnw7SL._AC_SL1000_.jpg", category: "Bedding", description: "This portable Futon Matratze is foldable, easy to travel or store, perfect for small apartments and is made of soft and comfortable fabric.", movie: "My Neighbor Totoro", price: "$229.99", quantity: 10)
item2 = Item.create(name: "Tree Spirits Face Mask", image: "https://ghibli.store/wp-content/uploads/2020/12/redirect12082020041232.jpg", category: "Mask", description: "Lightweight & ultra-breathable two-layer protective face mask with black soft stretch ear straps", movie: "Princess Mononoke", price: "$15.00", quantity: 100)

#CART
cart1 = Cart.create(user_id: User.first.id, purchase: false)
cart2 = Cart.create(user_id: User.first.id, purchase: false)

#CART_ITEM
cart_item1 = CartItem.create(cart_id: Cart.first.id, item_id: Item.first.id)
cart_item2 = CartItem.create(cart_id: Cart.second.id, item_id: Item.second.id)

