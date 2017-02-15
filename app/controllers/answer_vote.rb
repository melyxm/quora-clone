post '/answer/:id/upvotes' do
  @answer = Answer.find(params[:id])
  @votes = @answer.answer_votes.create(user_id: current_user.id,upvote:1)
  redirect "/question/#{@answer.question.id}"
end

post '/answer/:id/downvotes' do
  @answer = Answer.find(params[:id])
  @votes = @answer.answer_votes.create(user_id: current_user.id,downvote:1)
  redirect "/question/#{@answer.question.id}"
end
