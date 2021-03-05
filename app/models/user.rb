class User < ApplicationRecord

    has_many :carts
    has_many :cart_items, through: :carts
    #u1=User.all.first
    #u1.carts (line3)
    #u1.cart_itmes (line4)

    # has_many :cart_items
    # has_many :items, through: :cart_items
  
    has_secure_password
  
    validates :email, :password, :first_name, :last_name, presence: true
    validates :user_name, :password, :email, uniqueness: { case_sensitive: false }
    validates :password, length: {minimum: 8}

end
