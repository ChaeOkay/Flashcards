# Main file for 

class Deck

  def initialize(array_of_cards)
    @array_of_cards = array_of_cards
    @deck = []
    deck_from_file
    shuffle
  end

  def deck_from_file
    @array_of_cards.each { |defn_and_term| @deck << Card.new(defn_and_term) }
  end

  def shuffle
    @deck.shuffle!
  end

end

class Card

  attr_reader :definition, :term

  def initialize(args)
    @definition = args[:definition]
    @term = args[:term]
  end
end


