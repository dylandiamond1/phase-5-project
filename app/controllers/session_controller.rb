class SessionController < ApplicationController
    def create # '/login' 
        user = User.find_by(username:params[:username])
        
        if user&.authenticate(params[:password])
          render json: user, status: :ok
        else 
          render json: {error: "Invalid Password or Username"}, status: :unauthorized
        end
      end
end