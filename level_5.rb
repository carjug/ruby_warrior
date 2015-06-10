class Player
  def play_turn(warrior)
    if warrior.feel.enemy?
       warrior.attack!
    elsif
      if warrior.health < 20 && !taking_damge?(warrior)
        warrior.rest!
    elsif warrior.feel.captive?
        warrior.rescue!
      end
    else
      warrior.walk!
    end
    @health = warrior.health
  end


  def taking_damage?(warrior)
    warrior.health < @health
  end

end
