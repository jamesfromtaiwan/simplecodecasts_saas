class ProfilesController < ApplicationController
   
   def new
      # form where user can fill out their own profile
      @user = User.find(params[:user_id])
      # to determine who is logged in 
      @profile = @user.build_profile
      # generate by nest resource
       
   end
   
   def create
       
   end
    
end