# coding: utf-8
ActiveAdmin.register Product do

  form do |f|
    f.inputs do
      f.input :title, :as => :boolean, :label => "На главную"
      f.input :new, :as => :boolean, :label => "Новинка"
      f.input :spec, :as => :boolean, :label => "Спец.предложение"
      f.input :yes, :as => :boolean, :label => "Есть в наличии"
      f.input :norm, :label => "Норма упаковки"
      f.input :subcatalogs, as: :check_boxes, :label => "В разделах"
      f.input :subsubcatalogs, as: :check_boxes, :label => "В подразделах"
      f.input :name, :label => "Наименование"
      f.input :price, :label => "Цена"
      f.input :content, :label => "Содержание"
      f.input :title_image, :label => "Превью картинка"
      f.input :main_image, :label => "Главная картинка"
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
