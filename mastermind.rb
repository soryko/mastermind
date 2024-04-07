class Board
  def initialize
    @combination = Array.new(5) { 0 }
    @combination_row = @combination.map { |x| x + rand(1..10)}
    @board = Array.new(10) { Array.new(5) {'-'}}
  end

  def update_cell(row, col, number)
    @board[row][col] = number unless full?
  end

  def full?
    @board.all? { |row| row.all? { |cell| cell != '-'}}
  end

  def sequence
    @board.each do |row|
      puts row.join('|')
      puts '-' * (@board.size)
    end
    p @combination_row
  end
end

class Player
  def initialize(board)
    @board = board
  end
  def select_code
    @board.sequence
    loop do
      print "Select your code: (num 1-9, seperated by commas)"
      trial = gets
      player_combo = trial.split(",")
end

class Computer
  def initialize(board)
    @board = board
  end
  def pin_logic
    


board = Board.new
board.sequence