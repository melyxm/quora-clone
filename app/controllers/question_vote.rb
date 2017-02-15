post '/questions/:id/upvotes' do
  @question = Question.find(params[:id])
  @votes = @question.question_votes.create(user_id: current_user.id,upvote:1)
  redirect "/question/#{@answer.question.id}"
end

post '/questions/:id/downvotes' do
  @question = Question.find(params[:id])
  @votes = @question.question_votes.create(user_id: current_user.id,downvote:1)
  redirect "/question/#{@answer.question.id}"
end
