class View
attr_accessor :guess

  def initialize
    @guess = ""
  end

  def self.line_break
    "*" * 50
  end

  def self.render(message, arg = nil)
    arg == nil ? send(message) : send(message, arg)
  end

  def self.welcome
    puts self.line_break
    puts "Weclome to the flashcard spectacular!"
    puts self.line_break
    puts
  end

  def self.exit
    puts self.line_break
    puts "Thanks for playing, byeeeeeeeeeee!"
    puts self.line_break
  end

  def self.definition(card_definition)
    puts "Definition"
    puts "#{card_definition}"
    puts
  end

  def self.get_guess
    print "Please enter a guess >  "
    @guess = gets.chomp
    puts
  end

  def self.correct_card
    puts "Good Job! That's correct!"
    puts
  end

  def self.incorrect_card
    puts "Almost.... try it again!"
    puts
  end
end

# View.render(:welcome)
# View.render(:exit)
# View.render(:definition, 'definition')

