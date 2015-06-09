class Player
  def play_turn(warrior)
    if warrior.feel.empty? == true
    warrior.walk!
  elsif warrior.feel.empty? == false
    if warrior.feel.enemy? == true
      warrior.attack!
    end
  else
    warrior.walk!
  end
  end
end
