# get '/decks/:deck_id' do
#   deck_id = params[:deck_id]
#   @deck = Deck.find(deck_id)
#   card = @deck.cards.sample
#   card_id = card.id
#   redirect "/decks/#{deck_id}/cards/#{card_id}"
# end

# get '/decks/:deck_id/cards/:card_id' do
#   @card = Card.find(params[:card_id])
#   @deck_id = params[:deck_id]
#   erb :"cards/show"
# end

# post '/decks/:deck_id/cards/:card_id' do
#   @guess = Guess.create!(params[:user])
#   raise @guess.inspect
#   "Hello World"
# end

get '/decks/:deck_id' do
  deck_id = params[:deck_id]
  @deck = Deck.find(deck_id)
  redirect "/decks/#{deck_id}/cards"
end

get '/decks/:deck_id/cards' do
  #the following line worksbut destroys the database
  @deck = Deck.find(params[:deck_id])
  #the following line was an idea i had-- cloning the deck
    # @original = Deck.find(params[:deck_id])
    # @deck = @original.clone

  @card = @deck.cards.to_a.pop
  card_id = @card.id
  @deck_id = params[:deck_id]
  erb :"cards/show"
end

post '/decks/:deck_id/cards/:card_id' do
  hello = params[:user_input]

  @guess = Guess.create!(user_input: params[:user_input])

  # raise @guess.inspect
  @correctness = @guess.check_guess(params[:card_id])

  if @correctness == true
    session[:message] = "Correct!"
  else
    session[:message] = "Incorrect!"
  end

  original_deck = Deck.find(params[:deck_id])
  @cloned_deck = original_deck.clone
  @old_card = @cloned_deck.cards.find(params[:card_id])
  @old_card.destroy
  deck_id = @cloned_deck.id



  if @cloned_deck.cards.length == 0
    redirect '/users/:user_id'
  else
    redirect "/decks/#{deck_id}/cards"
  end
  #create the guess object
  # delete the previous card,
  # if the deck is emtpy, go home
  #redirect to /decks/:deck_id/cards

end






#user clicks on "US Capitals"
#array is created, which is a copy of the US capitals deck
  #array is array of Card objects
#uscapitalsarray.each ...shovel them into array

#create a cloned Deck Object
  #destroy it id by id

