
get "/sessions/new" do
  erb :"sessions/new"
end

post "/sessions" do
  if user = User.authenticate(params[:user])
    session[:user_id] = user.id
    # user_id = user.id
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
