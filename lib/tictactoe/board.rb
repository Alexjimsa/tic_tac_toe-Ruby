# The Board class represents the Tic-Tac-Toe game board.
# It manages the positions on the grid and tracks the state of each cell (either empty, marked by X, or marked by O).
class Board
  WINNING_COMBINATIONS = [
    ['a1', 'b1', 'c1'], ['a2', 'b2', 'c2'], ['a3', 'b3', 'c3'],  # Rows
    ['a1', 'a2', 'a3'], ['b1', 'b2', 'b3'], ['c1', 'c2', 'c3'],  # Columns
    ['a1', 'b2', 'c3'], ['c1', 'b2', 'a3']                       # Diagonals
  ].map(&:freeze).freeze # With #freeze we make this objects inmutable, constants

  attr_accessor :positions, :register

  # Initializes the board with a 3x3 grid.
  def initialize
    # @positions stores the current state of each cell (keys as grid positions like 'a1', 'b2').
    @positions = { 'a1' => nil, 'b1' => nil, 'c1' => nil,
                   'a2' => nil, 'b2' => nil, 'c2' => nil,
                   'a3' => nil, 'b3' => nil, 'c3' => nil }
    # @register is an array used to display the board visually, initialized with dashes ('-') to represent empty spots.
    @register = %i[- - -
                   - - -
                   - - -]
  end

  # Updates the position and register based on the player's move.
  def update(position, player)
    @positions[position] = player
    index = position_to_index(position)
    @register[index] = player
  end

  def reset
    @positions = @positions.map { |key| nil }
    @register = @register.map { |item| :- }
  end

  # Converts board position (like 'a1', 'b2') to the corresponding index in @register.
  def position_to_index(position)
    mapping = {
      'a1' => 0, 'b1' => 1, 'c1' => 2,
      'a2' => 3, 'b2' => 4, 'c2' => 5,
      'a3' => 6, 'b3' => 7, 'c3' => 8
    }
    mapping[position]
  end

  def valid_position?(position)
    return false unless positions.keys.include?(position)
    return false unless positions[position].nil?

    true
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
    for combo in WINNING_COMBINATIONS
      return true if positions[combo[0]] == :x && positions[combo[1]] == :x && positions[combo[2]] == :x
    end

    false
  end

  # Determines if player O has won by checking possible winning combinations on the board.
  def o_wins?
    # TODO: Implement logic to check if player O has a winning combination
    for combo in WINNING_COMBINATIONS
      return true if positions[combo[0]] == :o && positions[combo[1]] == :o && positions[combo[2]] == :o
    end

    false
  end

  # Determines if the game is a draw (i.e., all cells are filled with no winner).
  def draw?
    return true unless positions.values.include?(nil)

    false
  end
end

# board = Board.new
# puts board.show

# p board.register[4]
