# The Board class represents the Tic-Tac-Toe game board.
# It manages the positions on the grid and tracks the state of each cell (either empty, marked by X, or marked by O).
class Board
  attr_accessor :positions

  # Initializes the board with a 3x3 grid.
  # @positions stores the current state of each cell (keys as grid positions like 'a1', 'b2').
  # @register is an array used to display the board visually, initialized with dashes ('-') to represent empty spots.
  def initialize
    @positions = { 'a1' => nil, 'b1' => nil, 'c1' => nil,
                   'a2' => nil, 'b2' => nil, 'c2' => nil,
                   'a3' => nil, 'b3' => nil, 'c3' => nil }
    @register = ['-', '-', '-',
                 '-', '-', '-',
                 '-', '-', '-']
  end

  # Displays the current state of the board in a readable format.
  # The header shows the columns (a, b, c) and rows (1, 2, 3) with corresponding positions from the @register array.
  def show
    "a b c\n" \
    "#{@register[0]} #{@register[1]} #{@register[2]} 1\n" \
    "#{@register[3]} #{@register[4]} #{@register[5]} 2\n" \
    "#{@register[6]} #{@register[7]} #{@register[8]} 3"
  end

  # Determines if player X has won by checking possible winning combinations on the board.
  def x_wins?
    # TODO: Implement logic to check if player X has a winning combination
    p
  end

  # Determines if player O has won by checking possible winning combinations on the board.
  def o_wins?
    # TODO: Implement logic to check if player O has a winning combination
    p
  end

  # Determines if the game is a draw (i.e., all cells are filled with no winner).
  def draw?
    # TODO: Implement logic to check if the board is full and there is no winner
    p
  end
end

board = Board.new
puts board.show
