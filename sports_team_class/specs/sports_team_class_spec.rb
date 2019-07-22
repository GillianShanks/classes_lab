require("Minitest/autorun")
require("Minitest/rg")
require_relative("../sports_team_class.rb")

class TestSportsTeam < Minitest::Test
  def setup()
    players = ["Player1", "Player2", "Player3"] #local or global?
    @team1 = SportsTeam.new("Dolphins", players, "Brian Flores" )
  end

  def test_get_team_name()
    assert_equal("Dolphins", @team1.team_name)
  end

  def test_get_players()
    assert_equal(3, @team1.players.length)
  end

  def test_get_coach()
    assert_equal("Brian Flores", @team1.coach)
  end

  def test_set_coach()
    @team1.coach = "Gillian Shanks"
    assert_equal("Gillian Shanks", @team1.coach)
  end

  def test_add_player()
    @team1.add_player("Player4")
    assert_equal(4, @team1.players.length)
  end

  def test_check_player__present()
    assert_equal(true, @team1.check_player("Player2"))
  end

end
