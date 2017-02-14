post '/question/:question_id/answers' do
  # @answers = Answer.create(content: params[:asnwer])
  @question = Question.find(params[:question_id])
  @answer = @question.answers.create(content: params[:answer], user_id: current_user.id)
  redirect "/question/#{@question.id}"
end

get '/answers' do
  @answers = Answer.all
  erb :"questions/index"
end
