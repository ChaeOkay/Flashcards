#Flashcards Group Project
Team: Jeff, Ishwar, Alex, Chae

Model
-  Cards
  - definition
  - term
-  Deck
  - stores cards
  - adds cards
  - knows how to shuffle

View
-  welcome
-  exit
-  display card
-  get_guess
-  correct
-  incorrect
-  times_correct

Controller
-  Parse file
-  Instantiate new Cards and Deck
-  Play the game
    -  welcome
    -  iteratie through deck
        -  *view - display card*
            -  *view - get guess*
            -  evaluate guess
                -  if guess is correct
                    -  view - correct card guess
                    -  loop again from *view - display card* until deck is empty
                -  if guess is incorrect .render(:incorrect)
                    -  view - incorrect card guess
                    -  loop again from *view - get guess* from user until guess is correct
