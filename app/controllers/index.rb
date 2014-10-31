get '/' do
  # Look in app/views/index.erb
  redirect "sessions/new"
end

get "/sessions/new" do
  erb :"sessions/new"
end

post "/sessions" do
  if user = User.authenticate(params[:user])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @error = "Invalid email or password."
    erb :"sessions/new"
  end
end

get "/users/new" do
  erb :"users/new"
end

post "/users" do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @error = "Email or password can't be used. Please try again."
    erb :"users/new"
  end
end

get "/users/:user_id" do
  @user = User.find(params[:user_id])
  @decks = Deck.all
  erb :"users/show"
end

get "/logout" do
  session.clear
  redirect "/sessions/new"
end








































# get '/new_user' do
#   erb :'/new'
# end

# post '/' do
#   #find the user with the params given
#   #call authenticate method
#   #if a user is found
#     #go to the secret page
#   #else
#     #redirect to the login
#     #maybe throw an error
#   # value = rand(2)
#   if User.authenticate(params[:user])
#     erb :'/secret'
#   else
#     redirect '/'

#   end
# end

# post '/home' do
#   "This is the website!"
#   User.create!(params[:user])
#  redirect '/home'
# end

# get '/home' do
#   @users = User.all
#   erb :'/home'
# end

