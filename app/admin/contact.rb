ActiveAdmin.register Contact do
  menu :label => "Contactos"

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :tel, :email, :event, :date, :schedule, :place, :person, :requeriments, :comments
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column "Nombre", :name
    column "Email", :email
    column "Evento", :event
    column "Fecha del Evento", :date
    actions
  end
  
end
