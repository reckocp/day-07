class Game
  def initialize(player_name)
    @player_name = player_name
  end

  def get_player_choice
    puts "It's go time! Please enter rock, paper or scissors."
    print "> "
    player_entry = gets.chomp.downcase
    case player_entry
      when "rock"
        puts "Nice choice."
        return player_entry
      when "paper"
        puts "Uh oh.."
        return player_entry
      when "scissors"
        puts "Good luck with that one."
        return player_entry
      else
        puts "That's not rock, paper OR scissors. Play right or don't play at all!"
    end
  end

  def get_computer_choice
    puts "Now it's the computer's turn."
    sleep 2
    computer_entry = rand(1..3)
    case computer_entry
      when 1
        puts "The computer chose rock."
        return "rock"
      when 2
        puts "The computer chose paper."
        return "paper"
      when 3
        puts "The computer chose scissors."
        return "scissors"
    end
  end

  def processing(player_input, computer_input)
    puts "Here we go, #{@player_name}!"
    if player_input == "rock" && computer_input == "rock"
      puts "Player: ROCK vs Computer: ROCK ----- IT'S A DRAW!"
    elsif player_input == "rock" && computer_input == "scissors"
      puts "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS!"
    elsif player_input == "rock" && computer_input == "paper"
      puts "Player: ROCK vs Computer: PAPER ----- COMPUTER WINS!"
    elsif player_input == "paper" && computer_input == "rock"
      puts "Player: PAPER vs Computer: ROCK ----- PLAYER WINS!"
    elsif player_input == "paper" && computer_input == "paper"
      puts "Player: PAPER vs Computer: PAPER ----- IT'S A DRAW!"
    elsif player_input == "paper" && computer_input == "scissors"
      puts "Player: ROCK vs Computer: SCISSORS ----- COMPUTER WINS!"
    elsif player_input == "scissors" && computer_input == "rock"
      puts "Player: SCISSORS vs Computer: ROCK ----- COMPUTER WINS!"
    elsif player_input == "scissors" && computer_input == "paper"
      puts "Player: SCISSORS vs Computer: ROCK ----- PLAYER WINS!"
    elsif player_input == "scissors" && computer_input == "scissors"
      puts "Player: SCISSORS vs Computer: ROCK ----- IT'S A DRAW!"
    end
  end

  def play
    puts "Welcome to the game ROCK PAPER SCISSORS!"
    player_input = get_player_choice
    computer_input = get_computer_choice
    processing(player_input, computer_input)
  end
end

print "Please give me your name > "
name = gets.chomp

game = Game.new(name)
game.play
