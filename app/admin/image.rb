ActiveAdmin.register Image do
  menu :label => "Imagenes"

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


  index do
    column "Imagen" do |image|
      image_tag(image.file.url(:fill_thumb))
    end
    column "Galería" do |image|
      image.gallery.name
    end
    column "Creación", :created_at
    actions
  end


  
end
