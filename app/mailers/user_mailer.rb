class UserMailer < ApplicationMailer
    default from: "from@example.com"

  def contact_form(email, name, message)
    mail(:from => email,
          :to => 'your-email@example.com',
          :subject => "A new contact form message from #{name}")
  end
end
