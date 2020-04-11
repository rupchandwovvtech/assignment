class HomepageController < ApplicationController
  def index
  	@questions = Question.all
  end

  def create_user_answer
  	if user_sign_in?
  		UserAnswer.create!(user_id: current_user.id,)
  	else
  		format.html { redirect_to create_user_answer_homepage_index_path, notice: 'Please Login or Sign up the account.' }	
  	end
  end
end
