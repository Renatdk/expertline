ActiveAdmin.register Product do

  form do |f|
    f.inputs do
      f.input :title
      f.input :new
      f.input :spec
      f.input :yes
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


end
