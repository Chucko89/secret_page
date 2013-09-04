get '/' do
  if session[:user_id]
    erb :secret
  else
    erb :index
  end
end

post '/login' do
end

post '/logout' do
end

post '/signup' do
  user = User.create(params[:user])
  session[:user_id] = user.id
  redirect '/' 
end
