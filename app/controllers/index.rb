get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/new_user' do
  erb :'/new'
end

post '/' do
  #find the user with the params given
  #call authenticate method
  #if a user is found
    #go to the secret page
  #else
    #redirect to the login
    #maybe throw an error
  # value = rand(2)
  if User.authenticate(params[:user])
    erb :'/secret'
  else
    redirect '/'

  end
end

post '/home' do
  "This is the website!"
  User.create!(params[:user])
 redirect '/home'
end

get '/home' do
  @users = User.all
  erb :'/home'
end
