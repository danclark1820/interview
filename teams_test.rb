require_relative 'teams.rb'

describe 'teams' do
  it 'returns the number topics covered by a team' do
    p1 = [1, 1, 0]
    p2 = [0, 0, 1]
    expect(topics_covered(p1, p2)).to eq 3
  end

  it 'returns a combination of teams' do
    players = [[1], [2], [3]]
    expect(team_combos(players)).to eq [[[1], [2]],[[1],[3]],[[2],[3]]]
  end

  it 'returns the max number of topics covered and each teams topics' do
    p1 = [0,1]
    p2 = [1,0]
    p3 = [1,1]
    players = [p1, p2, p3]
    expect(teams_topics(players)).to eq [2, [2,2,2]]
  end

  it 'returns the number of teams that cover max topics' do
    p1 = [0,1]
    p2 = [1,0]
    p3 = [1,1]
    players = [p1, p2, p3]
    a = teams_topics(players)
    max = a[0]
    teams = a[1]
    expect(num_max_teams(max,teams)).to eq 3
  end

end
