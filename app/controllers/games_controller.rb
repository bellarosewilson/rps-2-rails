class GamesController < ApplicationController
  def index
    # This will render the homepage (rules)
  end
  
  def rules
    # This will render the rules page (same as index)
    render :index
  end
  
  def rock
    play_game("rock")
  end
  
  def paper
    play_game("paper")
  end
  
  def scissors
    play_game("scissors")
  end
  
  private
  
  def play_game(player_move)
    moves = ["rock", "paper", "scissors"]
    @player_move = player_move
    @comp_move = moves.sample
    @outcome = determine_outcome(@player_move, @comp_move)
  end
  
  def determine_outcome(player_move, comp_move)
    return "tied" if player_move == comp_move
    
    winning_combinations = {
      "rock" => "scissors",
      "paper" => "rock", 
      "scissors" => "paper"
    }
    
    if winning_combinations[player_move] == comp_move
      "won"
    else
      "lost"
    end
  end
end
