require_relative 'model'

class View

  def self.line_break
    "*" * 50
  end

  def self.render(message)
    send message
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

  def self.get_guess
  end

  def self.correct_card
  end

  def self.incorrect_card
  end

end

View.render('welcome')
View.render('exit')

