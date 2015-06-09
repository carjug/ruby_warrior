class Player
  def play_turn(warrior)
    if warrior.feel.empty? == true && warrior.health < 20
       warrior.rest!
  elsif warrior.feel.empty? == false
    if warrior.feel.enemy? == true
      warrior.attack!
    end
  else
    warrior.walk!
  end
  end
end
