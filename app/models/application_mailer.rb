class ApplicationMailer < ActionMailer::Base
  
  def contact_mailer(params, sent_at = Time.now)
    # raise params.to_yaml
      recipients    "larry@cube2media.com"
      from          "Bentar Development :: Contact Us"
      subject       "Bentar Contact Us Submission"
      body          :associate => params, :sent_on => sent_at
  end

end
