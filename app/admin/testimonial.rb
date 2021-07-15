ActiveAdmin.register Testimonial do
  menu :label => "Testimoniales"


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :concept, :body, :file, :body_en, :concept_en
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column "Imagen" do |testimonial|
      image_tag testimonial.file.url(:fill_thumb), class: 'radius'
    end
    column :name
    column :concept
    column :body
 actions
 end

end
