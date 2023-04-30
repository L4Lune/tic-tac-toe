# tic-tac-toe

## Classes
  ### Game Board
    * Needs to hold the image of the board. 3x3 grid
      * 1-9 like on the wikipedia page
       |=====================|
       |=====TIC TAC TOE=====|
       |=====================|
              1 | 2 | 3
             ---+---+---
              4 | 5 | 6 
             ---+---+---
              7 | 8 | 9 

      * Use a series of arrays to hold player marks
      * 1 = array[0,0], 2 = array[0,1], 3 = array[0,2], etc.
    * A variable for each grid square?

    ## Game Board Methods
      * Initialize with empty game board (initialize)
      * Display Board :
        *Figure out how to generate an image for the CLI of the board
      * Check for victory condition
      * Check for a player marker already existing in a grid square
        * is_nil? to verify if empty or not, then accept/reject player selection

  ### Players
    * Needs to hold the players mark: X or O

    ## Player Methods
      * Add move or add selection
        * The player selects a position on the game board and places their mark

## Game Logic
  * 
