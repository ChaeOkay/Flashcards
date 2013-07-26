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

  def self.run

  end

  def open_file
    File.open('flashcards.txt', 'r').each_line do |line| #opens file and does to each line
      p line
    end
  end


end

class Play

  def self.go

  end

end

controller = Controller.new

controller.open_file
