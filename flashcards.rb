<<<<<<< HEAD
# Main file for 

class Deck

  def initialize(array_of_cards)
    @array_of_cards = array_of_cards
    @deck = []
    shuffle
  end

  def deck_from_file
    @array_of_cards.each { |def_and_term| @deck << Card.new(def_and_term) }
  end

  def shuffle!
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


=======
# Main file for 
>>>>>>> 45bf4bc26b30af7d2a5deb7414d428714dc2b392