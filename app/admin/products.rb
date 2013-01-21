# coding: utf-8
ActiveAdmin.register Product do

  form do |f|
    f.inputs do
      f.input :title, as: :check_boxes
      f.input :new, as: :check_boxes
      f.input :spec, as: :check_boxes
      f.input :yes, as: :check_boxes
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
