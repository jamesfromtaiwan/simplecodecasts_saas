class ContactsController < ApplicationController
    
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            flash[:success] = "Message Sent!"
            # success is key name and followed by value
            redirect_to new_contact_path
        else
            flash[:danger] = "Error Occurred!"
            redirect_to new_contact_path
        end 
            
    end
    
    private
    
        def contact_params
            
           params.require(:contact).permit(:name, :email, :comments) 
           
        end
        
end
