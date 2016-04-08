require 'byebug'

class Game

  def initialize
    @markers = [["","",""], ["","",""], ["","",""]]
  end

  def play
    byebug
    input = gets
    input = input.split(" ")
    move(input[0], input[1], input[2])
  end


  def move(row, column, marker)
    @markers[row][column] = marker
    check_for_win
  end

  def check_for_win
    # check columns
    (0..2).step do |column|
      if (@markers[0][column] == @markers[1][column]) && (@markers[1][column] == @markers[2][column])
        print_win(0, column)
      end
    end

    # check rows
    (0..2).step do |row|
      if (@markers[row][0] == @markers[row][1]) && (@markers[row][1] == @markers[row][2])
        print_win(row, 0)
      end
    end
  end

  def print_win(row, column)
    puts "\n\n #{@markers[0][column]} Wins!\n\n"
  end

end



if __FILE__ == $0
  g = Game.new
  g.play


end
