class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :cart_items, :carts

end
