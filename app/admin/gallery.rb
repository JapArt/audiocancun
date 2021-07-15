ActiveAdmin.register Gallery do
  menu :label => "Galerías"

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :body, :name_en, :images_attributes => [:id, :gallery_id, :file, :_destroy]
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
    column "Numero de Imagenes" do |gallery|
      gallery.images.size
    end 
    column "Creación", :created_at
    actions
  end



  show do
    render "images"
  end
  
end
