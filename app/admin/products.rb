# coding: utf-8
ActiveAdmin.register Product do

  form do |f|
    f.inputs do
      f.input :title, :as => :boolean
      f.input :new, :as => :boolean
      f.input :spec, :as => :boolean
      f.input :yes, :as => :boolean
      f.input :norm
      f.input :subcatalogs, as: :check_boxes
      f.input :name
      f.input :price
      f.input :content
      f.input :title_image
      f.input :main_image
    end

    f.buttons
  end

  index do
    column :id

    column "Наименование" do |product|
      link_to product.name, admin_product_path(product)
    end
    column "На главной", :title
    default_actions
  end

end
