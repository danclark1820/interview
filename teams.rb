require 'pry'
def topics_covered(a,b)
  topic_count = 0
  (0..a.length).each do |i|
    if a[i] == 1 || b[i] == 1
      topic_count += 1
    end
  end
  return topic_count
end

def team_combos(a)
  a.combination(2).to_a
end

def teams_topics(a)
  max = 0
  team_topics = []
  t_c = 0
  (0..a.length-2).each do |i|
    t_c = topics_covered(a[i], a[i+1])
    team_topics.push(t_c)
    if t_c > max
      max = t_c
    end
  end
  return [max, team_topics]
end

def num_max_teams(a, b)
  max_teams = 0
  b.each do |i|
    if i == a
      max_teams += 1
    end
  end
  max_teams
end

t = gets.strip.split(" ")
num_players = t[0].to_i
players = []
(0..num_players - 1).each do |i|
  player = gets.strip.split("")
  player_i = []
  player.each do |s|
    player_i.push(s.to_i)
  end
  players.push(player_i)
end
binding.pry
t_c = team_combos(players)
t_t = teams_topics(t_c)
puts(t_t[0])
puts num_max_teams(t_t[0], t_t[1])
