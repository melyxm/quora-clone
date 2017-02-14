helpers do
	# for repetitive <em> in html view
	def current_user
    User.find_by(id: session[:id])
	end

  def logged_in?
    !current_user.nil?
  end

	def question_url(question)
		"/question/#{question.id}"
	end

end
