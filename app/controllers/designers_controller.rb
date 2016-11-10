class DesignersController < ApplicationController
	def index
		@designers = Student.sort_by_updated_profile.where(:job_type => "Designer").paginate(:page => params[:page], :per_page => 10)
	end
end
