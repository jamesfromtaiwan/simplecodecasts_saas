class UsersController < ApplicationController
    
   def show
     @user = User.find(params[:id])
    #   :id is based on RESTful passed params :id
   end
    
    
end