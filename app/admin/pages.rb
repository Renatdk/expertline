ActiveAdmin.register Page do
   form do |f|
    f.inputs do  
      f.input :title
      f.input :body, :input_html => { :class => "tinymce" }
    end
    f.buttons
  end

end
