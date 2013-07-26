require 'model'

class View
attr_

  def self.line_break
    "*" * 50
  end

  def self.render(message, *args = nil)
##### working on parsing mutiple args with send
    send message(args)
  end

  def self.welcome
    puts self.line_break
    puts "Weclome to the flashcard spectacular!"
    puts self.line_break
  end

  def self.exit
    puts self.line_break
    puts "Thanks for playing, byeeeeeeeeeee!"
    puts self.line_break
  end

###### working on passing mult args from render method
  def self.definition(card_definition)
    puts "#{card_definition}"
  end

  def self.get_guess
    puts "please eneter a guesess"
    @guess = gets.chomp
  end

  def self.correct_card
  end

  def self.incorrect_card
  end

end

View.render('welcome')
View.render('exit')

