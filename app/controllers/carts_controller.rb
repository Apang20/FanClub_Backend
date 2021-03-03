class CartsController < ApplicationController

    # skip_before_action :authorized, only: [:create, :index]

    def index
        cart_items = CartItem.all 
        render json: cart_items, only: [:name, :image, :price, :quantity]
    end

    def show
        cart = Cart.find(params[:id])
        render json: cart
    end

    # def destroy

    # end 
    # def create 
    #     # cart = Cart.create(user_id: params["user_id"], item_id: params["item_id"])
    #     # render json: cart
    #     #byebug
    #     cart = Cart.find(params[:cart_id])
    #     render json: cart.to_json({include: [:carts => {:include => [:items]}], except: [:created_at, :updated_at]})

    # end

   

end
#user = User.find(params[:id])
#render json: user.to_json({include: [:carts => {:include => [:items]}], except: [:created_at, :updated_at]})
