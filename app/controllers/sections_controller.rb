class SectionsController < ApplicationController
	def index
		@sections = Section.order('created_at DESC')
	end

	def new
		@section = Section.new
	end
	def show
		@section = Section.find(params[:id])
	end
	def create
		@section = Section.new(section_params)
		if @section.save
			flash[:success] = "The photo was added!"
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

	def section_params
		params.require(:section).permit(:image, :title, :description)
	end
end

