class Deck

  attr_reader :deck

  def initialize(flashcards)
    @deck = []
    create_deck(flashcards)
    shuffle
  end

  def create_deck(flashcards)
    flashcards.each { |defn_and_term| @deck << Card.new(defn_and_term) }
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