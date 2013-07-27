class View

  class << self
    def guess
      @guess
    end

    def guess=(input)
      @guess = input
    end

    def line_break
      "*" * 50
    end

    def line_break_end
      puts line_break
      puts
    end

    def render(message, arg = nil)
      arg == nil ? send(message) : send(message, arg)
    end

    def welcome
      puts line_break
      puts "Weclome to the flashcard spectacular!"
      puts "Enter 'q' at any time to quit this program"
      puts line_break_end
    end

    def exit
      puts line_break
      puts "Thanks for playing, byeeeeeeeeeee!"
      puts line_break_end
    end

    def definition(card_definition)
      puts "Definition"
      puts "#{card_definition}"
      puts
    end

    def get_guess
      print "Please enter a guess >  "
      self.guess = gets.chomp
      puts
    end

    def correct_card
      puts "Good Job! That's correct!"
      puts line_break_end
    end

    def incorrect_card(card_definition)
      puts "Almost.... try it again!"
      puts line_break_end
      definition(card_definition)
    end
    
  end
end

# View.render(:welcome)
# View.render(:exit)
# View.render(:definition, 'definition')

