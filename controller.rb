=begin

Controller will...
parse file,
instantiate new cards and deck,
play game,
  - welcome message
  - iteration @ each element
    - display definition
    - get guess from view
    - check guess
      - if true, call view.correct
      - if false, go back to get guess & call view.incorrect
  - end game


Type of file we want to put our flash cards in?
Classes are deck and card?

=end

class Controller 
  attr_reader :text, :our_deck

  def self.run
    open_file
    @our_deck = Deck.new(create_flash_cards)
    Play.go(@our_deck)
  end

  def open_file
    @text = File.open('flashcards.txt', 'r').readlines #opens file and reads it
  end

  def create_flash_cards
    flash_cards = []
    @text.join("").split("\n \n").each do |element| #split by two line breaks and take each element
      pair = element.split("\n") #split by one line break
      flash_cards << {definition: pair[0], term: pair[1]}
      #flash_cards hash should look like [:definition] = definition, [:term] = term
    end
    flash_cards
  end


end

class Play
  attr_reader :our_deck

  def self.go
    View.render('welcome')
    @our_deck.deck.each do |card|
      guess_correct = false
      View.render('definition', card.definition)
      while guess_correct == false
        guess = View.render('get_guess')
        if guess == card.term
          guess_correct = true
          View.render('correct_card')
        else
          View.render('incorrect_card')
        end
      end
    end
    View.render('exit')

    render(our_deck.deck[index])
  end

end

controller = Controller.new

controller.open_file
controller.create_flash_cards
