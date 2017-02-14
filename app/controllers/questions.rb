get '/questions' do
  redirect '/login' unless logged_in?
  @questions = Question.all
  erb :"questions/index"
end

post '/questions' do
  @question = current_user.questions.create(content: params[:question])
  redirect "/question/#{@question.id}"
end

get '/question/:id' do
  @question = Question.find_by(id: params[:id])
  erb :"questions/eachquestion"
end
