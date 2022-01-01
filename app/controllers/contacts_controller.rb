class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def confirm 
		@contact = Contact.new(contact_params)
	end

	def back
		@contact = Contact.new(contact_params)
		render :new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			ContactMailer.contact_mail(@contact).deliver
			redirect_to 
		end
	end

	private

	def contact_params
		params.require(:contact).permit(:name, :email, :title, :message)
	end
end
