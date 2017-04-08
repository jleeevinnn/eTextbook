ActiveAdmin.register Section do
	permit_params :title, :chapter, :image, :description
form :html => { :multipart => true } do |f|
    f.inputs do
        f.input :title
        f.input :description
        f.input :image, required: true
        #...
 	end
 	f.actions
	end
end