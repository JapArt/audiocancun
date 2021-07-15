class ContactMailer < ActionMailer::Base
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_create.subject
  #
  def contact_create(contact)
    @contact = contact
    @greeting = "Te han enviado un mensaje desde tu sitio"
    mail to: "", subject: "#{contact.name}", from: "\"#{contact.name}\" <#{contact.email}>"

  end
end