require_relative 'view'
require_relative 'model'

class Controller 
  attr_reader :text, :our_deck

  class << self

    def run
      open_and_parse_file
      @our_deck = Deck.new(create_flash_cards)
      Play.go(@our_deck)
    end

    def open_and_parse_file
      @text = File.open('flashcards.txt', 'r').readlines #opens file and reads it
      @text = @text.join("").split("\n \n").map { |element| element.split("\n") }
    end

    def create_flash_cards
      flash_cards = []
      @text.each do |definition, term|
        flash_cards << {definition: definition, term: term}
      end
      flash_cards
    end

  end
end

class Play

  class << self

    def go(our_deck)
      View.render(:welcome)
      our_deck.deck.each { |card| ask_for_guess(card) }
      View.render(:exit)
    end

    def ask_for_guess(card)
      guessed = false
      View.render(:definition, card.definition)
      until guessed == true
        guessed = check_guess(card, guess_from_player)
      end
    end

    def guess_from_player
      View.render(:get_guess)
      View.guess
    end

    def check_guess(card, guess)
      case guess
      when card.term
        View.render(:correct_card)
        true
      when "q"
        View.render(:exit)
        exit
      else
        View.render(:incorrect_card, card.definition)
        false
      end
    end

  end
end

Controller.run
