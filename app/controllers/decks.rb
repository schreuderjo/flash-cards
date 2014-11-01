get '/decks/:deck_id' do
  deck_id = params[:deck_id]
  @deck = Deck.find(deck_id)
  card = @deck.cards.sample
  card_id = card.id
  redirect "/decks/#{deck_id}/cards/#{card_id}"
end

get '/decks/:deck_id/cards/:card_id' do
  @card = Card.find(params[:card_id])
  @deck_id = params[:deck_id]
  erb :"cards/show"
end

post '/decks/:deck_id/cards/:card_id' do
  @guess = Guess.create!(params[:user])
  raise @guess.inspect
  "Hello World"
end
