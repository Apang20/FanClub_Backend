class ItemsController < ApplicationController

    skip_before_action :authorized, only: [:index, :destroy]
    
    def index

        items = Item.all
        render json: items
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy();
        render json: {message: "Successfully Removed"}
    end
    
end
