class ContactsController < ApplicationController
  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.contact_create(@contact).deliver
        format.html { redirect_to root_path, notice: 'Gracias por contactarnos, un asesor se pondrá en contacto con usted.' }
      else
        format.html { render action: 'new' }
      end
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :tel, :email, :event, :date, :schedule, :place, :person, :requeriments, :comments)
    end
end
