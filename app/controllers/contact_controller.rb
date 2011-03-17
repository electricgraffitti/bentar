class ContactController < ApplicationController
  
  def index
    @associate = Associate.new
  end

  def contacts_mailer
    # raise params.to_yaml
    #grab the params to pass to the redirect
    @form = params[:associate]
    @associate = Associate.new(params[:associate])
    
    contactus = ApplicationMailer.create_contact_mailer(params[:associate])
    contactus.set_content_type("text/html")
    ApplicationMailer.deliver(contactus)
    @associate.save

    flash[:notice] = "Your message has been sent."
    render :partial =>  'contact/contact_thank_you',
                       :layout => "application",
                       :locals => {:form => @form}
  end
  
  
end
