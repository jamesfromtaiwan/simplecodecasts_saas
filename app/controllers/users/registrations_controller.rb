class Users::RegistrationsController < Devise::RegistrationsController
   
   before_filter :select_plan, only: :new
   # before_filter happen before the main code
   # only trigger :select_plan method when the new is being called
   
   def create 
      super do |resource|
         # import the code from RegistrationController
         if params[:plan] 
            resource.plan_id = params[:plan]
            if resource.plan_id == 2 # User.plan_id = 2 if the user been created is from pro account
                resource.save_with_payment
            else
                resource.save
            end
         end
      end
   end
   
   private
   def select_plan
      unless params[:plan] && (params[:plan] == '1' || params[:plan] == '2')
         flash[:notice] = "Please select a membership plan to sign up."
         redirect_to root_url
      end
   end
    
end