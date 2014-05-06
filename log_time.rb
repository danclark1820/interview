require 'pry'

log =
[{:time=>201201, :x=>2},
 {:time=>201201, :y=>7},
 {:time=>201201, :z=>2},
 {:time=>201202, :a=>3},
 {:time=>201202, :b=>4},
 {:time=>201202, :c=>0}]

log.each do |entry|
  log.each do |other_entry|
    if entry[:time] == other_entry[:time]
      entry.merge!(other_entry)
    end
  end
end

puts log.uniq!


