get '/users/:id' do
  @user = User.find(params[:id])
  erb :"static/profile"
end

get '/myquestions/users/:id' do
  @user = User.find(params[:id])
  erb :"static/myquestions"
end

get '/myanswers/users/:id' do
  @user = User.find(params[:id])
  erb :"static/myanswers"
end
