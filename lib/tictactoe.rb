require_relative 'tictactoe/board'
require_relative 'tictactoe/chip'

# The TicTacToe class manages the main flow of the Tic-Tac-Toe game.
# It initializes with a board object and tracks the turns between players (X and O).
# The game method orchestrates the game loop, checking for a winner or a draw after each move.
class TicTacToe
  # @turn keeps track of whose turn it is (:x or :o), starting with :x
  @turn = :o

  def initialize(board)
    @board = board
  end

  # Starts the main game loop. Displays the board, asks for player input, and checks for a winner.
  def game
    @turn = change_turn
    start
    introduce_pos
    game if keep_playing?
    p end_game
    play_again
  end

  private

  def change_turn
    return :o if @turn == :x

    :x
  end

  # This method displays the current board status and asks the user for the next move.
  def start
    p "#{@turn} turn"
    p board.show
    p "introduce the position where you wanna pace the #{@turn}"
  end

  # Ends the game by checking if it's a draw or if there's a winner.
  def end_game
    return "It's a draw" if draw?

    "Player #{winner} wins"
  end

  def play_again
    p 'What do you want to do?\n1. Play again; 2. Exit'
    option = gets.chomp
    if option == 1
      game
    elsif option == 2
      p 'ok, bye'
    else
      p 'Invalid number, try again'
      play_again
    end
  end

  # Prompts the player to input a position to place their mark on the board.
  def introduce_pos
    submited_pos = gets.chomp
    board.position[submited_pos] = @turn
  end

  # Checks if the game should continue. Returns `false` if there's a winner or a draw.
  def keep_playing?
    draw? if winner.nil?

    false
  end

  # Determines the winner based on the current board state.
  # Returns `:x` if player X wins, `:o` if player O wins, or `nil` if there is no winner.
  def winner
    return :x if board.x_wins?
    return :o if board.o_wins?

    nil
  end

  # Checks if the game ends in a draw (i.e., no empty positions left).
  def draw?
    return true unless board.include?(nil)

    false
  end
end

game = TicTacToe.new
game.game(Board.new)
