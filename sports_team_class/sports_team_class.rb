class SportsTeam
  attr_reader :team_name, :players
  attr_accessor :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players #is an array
    @coach = coach
    @points = 0
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(new_player)
    @players << new_player
  end

  def check_player(player_name)
    return @players.include?(player_name)
  end

end
