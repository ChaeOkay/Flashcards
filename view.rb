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

  def exit
    # puts exit message
  end

  def get_guess
  end

  def correct_card
  end

  def incorrect_card
  end

end

View.render('welcome')

