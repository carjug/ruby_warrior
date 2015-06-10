class Player
  def play_turn(warrior)
    if warrior.feel.enemy?
      warrior.attack!
    elsif warrior.health < 20 && !taking_damage?(warrior)
      warrior.rest!
    elsif warrior.feel.empty?
      warrior.rest!
    else
      warrior.walk!
    end
    @health = warrior.health
  end


  def taking_damage?(warrior)
    warrior.health < @health
  end
end
