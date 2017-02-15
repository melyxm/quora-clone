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

	def answer_upvote_url(answer)
		"/answer/#{answer.id}/upvotes"
	end

	def answer_downvote_url(answer)
		"/answer/#{answer.id}/downvotes"
	end

	def question_upvote_url(question)
		"/question/#{answer.id}/upvotes"
	end

	def question_downvote_url(question)
		"/question/#{answer.id}/downvotes"
	end

end
