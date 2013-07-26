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
Classes are Deck and Card.

=end

require_relative 'view'
require_relative 'model'

class Controller 
  attr_reader :text, :our_deck

  def self.run
    self.open_file
    @our_deck = Deck.new(create_flash_cards)
    Play.go(@our_deck)
  end

  def self.open_file
    @text = File.open('flashcards.txt', 'r').readlines #opens file and reads it
    @text = @text.join("").split("\n \n")
  end

  def self.create_flash_cards
    flash_cards = []
    @text.each do |element| #split by two line breaks and take each element
      pair = element.split("\n") #split by one line break
      flash_cards << {definition: pair[0], term: pair[1]}
      #flash_cards hash should look like [:definition] = definition, [:term] = term
    end
    flash_cards
  end


end

class Play

  def self.go(our_deck)
    View.render(:welcome)
    our_deck.deck.each { |card| check_guess(card) }
    View.render(:exit)
  end

  def self.check_guess(card)
    guess_correct = false
    View.render(:definition, card.definition)
    while guess_correct == false
      View.render(:get_guess)
      guess = View.guess
      if guess == card.term
        guess_correct = true
        View.render(:correct_card)
      elsif guess == "q"
        View.render(:exit)
        exit
      else
        View.render(:incorrect_card, card.definition)
      end
    end
  end

end

Controller.run
