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
	def index
	  @emails = Email.order(:last_name)
	  respond_to do |format|
	    format.html
	    format.csv do
	      headers['Content-Disposition'] = "attachment; filename=\"email-list\""
	      headers['Content-Type'] ||= 'text/csv'
	    end
	  end
	end
	private
  def email_params
    params.require(:email).permit(:last_name, :first_name, :email_address, :street_address, :city, :state, :zip, :phone, :url, :notes)
  end
end
