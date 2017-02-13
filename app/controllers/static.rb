
get '/' do
  erb :"static/index"
end

# In users_controller.rb
post '/signup' do
    @user = User.new(full_name: params[:full_name], email: params[:user_email], password: params[:password])
    if @user.save!
    session[:id] = @user.id
    redirect '/'
    else
      erb :"static/index"
    end
  end

get '/login' do
    erb:'static/login'
end

post '/login' do
user = User.find_by(id: session[:id])
  if user && user.authenticate()
    session[:id] = user.id
    redirect 'static/welcome'
  else
    @error = "Invalid email/password combination"
    erb :"static/index"
  end
end

post '/logout' do
  # kill a session when a user chooses to logout, for example, assign nil to a session
  # redirect to the appropriate page
  session[:id] = nil
  redirect '/'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :"static/profile"
end
