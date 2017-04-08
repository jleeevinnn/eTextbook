class ChaptersController < ApplicationController
	def index
		@chapters = Chapter.order(:chapter_id)
	end
	def chapter_params
		params.require(:chapter).permit(:title, :chapter_id, :sections)
	end
end
