class Section < ApplicationRecord
	belongs_to :chapter
	has_attached_file :image
	validates_attachment :image, content_type: { content_type: ["application/pdf"] }


end
