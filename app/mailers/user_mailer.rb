class UserMailer < ApplicationMailer
  default from: "ritz.wu@outlook.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'ritz.wu@outlook.com',
        :subject => "A new contact form message from #{name}")
  end
end