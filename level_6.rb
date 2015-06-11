class Player
  def play_turn(warrior)

    if warrior.feel(:backward).empty?
        warrior.walk!(:backward)
    elsif warrior.feel(:backward).captive?
        warrior.rescue!(:backward)
    else
        warrior.walk!
    end

    if warrior.feel.enemy?
       warrior.attack!
    elsif
      if warrior.health < 20 && !taking_damage?(warrior)
        warrior.rest!
      end
    else
      if warrior.feel.captive?
        warrior.rescue!
      else
        warrior.walk!
      end
    end
    @health = warrior.health
  end
