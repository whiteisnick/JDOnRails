class EmailsController < ApplicationController
	def new
		@email = Email.new
	end
	def create 
	  @email = Email.new(email_params) 
	  if @email.save 
	    redirect_to '/confirmed' 
	  else 
	    render 'new' 
	  end 
	end
	def show; end
	private 
  def email_params 
    params.require(:email).permit(:email_address) 
  end
end
