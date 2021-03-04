class UsersController < ApplicationController

    # skip_before_action :authorized, only: [:create]
    # def index 
    #   render json: User.all 
    # end 
  
    def index  
      users = User.all 
      render json: User.all.to_json({include: [:carts => {:include => [:cart_items => {:include => [:item]}]}], except: [:created_at, :updated_at]})
      # render json: users.to_json({
      #   include:{
      #     carts: {except: [:created_at, :updated_at]},
      #   }
      # })
    end 

    def show
      user = User.find(params[:id])
      render json: user.to_json({include: [:carts => {:include => [:items]}], except: [:created_at, :updated_at]})
      # render json: user.to_json({include: [:carts => {:include => [:cart_items => {:include => [:item]}]}], except: [:created_at, :updated_at]})
      # render json: user.to_json({include: [:carts => {:include => [:cart_items]}], except: [:created_at, :updated_at]})
      # render json: user.to_json(include: => [:cart => {include: => [:cart_item]}])
      # user = User.first
      # render json: user.to_json({
      #   include:{
      #     carts: {except: [:created_at, :updated_at]},
      #   }
      # })

  end 
   
    def create
      user = User.create(user_params)
     
      if user.valid?
        render json: { user: user, status: :created}
      else
        render json: { error: 'failed to create user', status: :not_acceptable}
      end
    end


    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end
  
  private
    
    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :phone_number, :shipping_address, :email, :password)
    end
    
end
