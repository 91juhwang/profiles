class ExperiencesController < ApplicationController
		def create
		@profile = Profile.find(params[:profile_id])
		@experience = @profile.experiences.create(experience_params)
		redirect_to profile_path(@profile.id)
	end

	def destroy
		@profile = Profile.find(params[:profile_id])
		@experience = @profile.experiences.find(params[:id])
		@experience.destroy
		redirect_to profile_path(@profile.id)
	end

	private
	def experience_params
	params.require(:experience).permit(:)
	end

end
