ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: "Inicio"

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Contactos" do
          table_for Contact.order('created_at desc').limit(10) do
            column :name do |contact|
              link_to contact.name, admin_contact_path(contact)
            end
            column :email do |contact|
              mail_to contact.email
            end
          end
        end
      end

      column do
        panel "Administradores" do
          table_for AdminUser.order('created_at desc').limit(10) do
            column :email do |user|
              link_to user.email, admin_admin_user_path(user)
            end
          end
        end
      end

      column do
        panel "Galerías" do
          table_for Gallery.order('created_at desc').limit(10) do
            column "Nombre" do |gallery|
              link_to gallery.name, admin_gallery_path(gallery)
            end

            column "Imagenes" do |gallery|
              gallery.images.size
            end
          end
        end
      end
    end

end

end
