class UsersController < ApplicationController
   before_action :authenticate_user!
   
   def index
      
   end
   
   def show
     @user = User.find(params[:id])
    #   :id is based on RESTful passed params :id
   end
    
    
end