michael = User.create!(name: "Michael Steichen", email: "michael.steichen@gmail.com", password_hash: "123456")
jordan = User.create!(name: "Jordan Schreuder", email: "schreuderjo@gmail.com", password_hash: "123abc")
jo_schmo = User.create!(name: "Joe Schmoe", email: "joeschmoe@gmail.com", password_hash: "abc123")

capitals = Deck.create!(name: "US Capitals")

capitals.cards.create!(question: "Alabama", answer: "Montgomery")
capitals.cards.create!(question: "Alaska", answer: "Juneau")
capitals.cards.create!(question: "Arizona", answer: "Phoenix")
capitals.cards.create!(question: "Arkansas", answer: "Little Rock")
capitals.cards.create!(question: "California", answer: "Sacramento")
capitals.cards.create!(question: "Colorado", answer: "Denver")
capitals.cards.create!(question: "Connecticut", answer: "Hartford")
capitals.cards.create!(question: "Delaware",  answer: "Dover")
capitals.cards.create!(question: "Florida", answer: "Tallahassee")
capitals.cards.create!(question: "Georgia", answer: "Atlanta")
capitals.cards.create!(question: "Hawaii",  answer: "Honolulu")
capitals.cards.create!(question: "Idaho", answer: "Boise")
capitals.cards.create!(question: "Illinois",  answer: "Springfield")
capitals.cards.create!(question: "Indiana", answer: "Indianapolis")
capitals.cards.create!(question: "Iowa",  answer: "Des Moines")
capitals.cards.create!(question: "Kansas",  answer: "Topeka")
capitals.cards.create!(question: "Kentucky",  answer: "Frankfort")
capitals.cards.create!(question: "Louisiana", answer: "Baton Rouge")
capitals.cards.create!(question: "Maine", answer: "Augusta")
capitals.cards.create!(question: "Maryland",  answer: "Annapolis")
capitals.cards.create!(question: "Massachusetts", answer: "Boston")
capitals.cards.create!(question: "Michigan",  answer: "Lansing")
capitals.cards.create!(question: "Minnesota", answer: "Saint Paul")
capitals.cards.create!(question: "Mississippi", answer: "Jackson")
capitals.cards.create!(question: "Missouri",  answer: "Jefferson City")
capitals.cards.create!(question: "Montana", answer: "Helena")
capitals.cards.create!(question: "Nebraska",  answer: "Lincoln")
capitals.cards.create!(question: "Nevada",  answer: "Carson City")
capitals.cards.create!(question: "New Hampshire", answer: "Concord")
capitals.cards.create!(question: "New Jersey", answer: "Trenton")
capitals.cards.create!(question: "New Mexico", answer: "Santa Fe")
capitals.cards.create!(question: "New York", answer: "Albany")
capitals.cards.create!(question: "North Carolina", answer: "Raleigh")
capitals.cards.create!(question: "North Dakota", answer: "Bismarck")
capitals.cards.create!(question: "Ohio",  answer: "Columbus")
capitals.cards.create!(question: "Oklahoma",  answer: "Oklahoma City")
capitals.cards.create!(question: "Oregon",  answer: "Salem")
capitals.cards.create!(question: "Pennsylvania",  answer: "Harrisburg")
capitals.cards.create!(question: "Rhode Island", answer: "Providence")
capitals.cards.create!(question: "South Carolina", answer: "Columbia")
capitals.cards.create!(question: "South Dakota", answer: "Pierre")
capitals.cards.create!(question: "Tennessee", answer: "Nashville")
capitals.cards.create!(question: "Texas", answer: "Austin")
capitals.cards.create!(question: "Utah",  answer: "Salt Lake City")
capitals.cards.create!(question: "Vermont", answer: "Montpelier")
capitals.cards.create!(question: "Virginia",  answer: "Richmond")
capitals.cards.create!(question: "Washington",  answer: "Olympia")
capitals.cards.create!(question: "West Virginia", answer: "Charleston")
capitals.cards.create!(question: "Wisconsin", answer: "Madison")
capitals.cards.create!(question: "Wyoming", answer: "Cheyenne")

palabras = Deck.create!(name: "Dora and Diegos' Ten Awesome Spanish-English Words")

palabras.cards.create!(question: "perro", answer: "dog")
palabras.cards.create!(question: "gato", answer: "cat")
palabras.cards.create!(question: "burrito", answer: "burrito")
palabras.cards.create!(question: "taco", answer: "taco")
palabras.cards.create!(question: "zapatos", answer: "shoes")
palabras.cards.create!(question: "puerta", answer: "door")
palabras.cards.create!(question: "agua", answer: "water")
palabras.cards.create!(question: "cerveza", answer: "beer")
palabras.cards.create!(question: "huevos", answer: "eggs")
palabras.cards.create!(question: "computadora", answer: "computer")
palabras.cards.create!(question: "calcetines", answer: "socks")




