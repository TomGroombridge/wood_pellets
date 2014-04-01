class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to"/"
      flash[:alert] = 'Thank you for your message. We will contact you soon!'
    else
      redirect_to"/"
      flash[:alert] = 'Cannot send message.'
      render :new
    end
  end
end