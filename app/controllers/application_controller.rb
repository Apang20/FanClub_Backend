class ApplicationController < ActionController::API

    #  before_action :authorized //auth before anything else when uncommented 
   
    # def encode_token(payload)
    #   JWT.encode(payload, "put your secret password here")
    # end
    
    
    # def auth_header
    #   request.headers['Authorization']
    # end

    
    # def decoded_token
    #   if auth_header
    #     token = auth_header.split(' ')[1]
    #     begin
      
    #       JWT.decode(token, "put your secret password here", true, algorithm: 'HS256')
    #     rescue JWT::DecodeError
    #       nil
    #     end
    #   end
    # end

   
    # def current_user
    #   if decoded_token
    #     user_id = decoded_token[0]['user_id']
    #     @user = User.find_by(id: user_id)
    #   end
    # end

    
    # def logged_in?
    #   !!current_user
    # end


    # def authorized //if not logged in, then render "should be logged in"
    #   render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    # end


    
end
