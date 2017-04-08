ActiveAdmin.register Chapter do
permit_params :title, :chapter_id, sections_attributes: [ :id, :title, :description, :image, :_destroy ]
form do |f|
  f.inputs "Details" do
    f.input :title
    f.input :chapter_id
  end

  f.has_many :sections do |section|
    section.inputs "Sections" do
      section.input :title
      section.input :description
      section.input :image, required: true
      #repeat as necessary for all fields
    end
  end
  f.actions
end
end
