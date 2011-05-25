# encoding:  UTF-8
class ContactsController < ApplicationController

  respond_to :html

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    # analytics data
    @contact.user_agent = request.headers['HTTP_USER_AGENT'] 
    @contact.referrer = request.headers['HTTP_REFERER']
    @contact.http_accept_language = request.headers['HTTP_ACCEPT_LANGUAGE']

    respond_with(@contact) do |format|
      if @contact.save
        flash[:notice] = 'Thank you for signing up!'
        format.html { redirect_to :root }
      else
        format.html { render new_contact_path }
      end
    end
  end

end
