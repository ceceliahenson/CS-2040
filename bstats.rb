# bstats.rb: baseball stats

class Player
  def initialize(name, at_bats, runs, hits, runs_batted_in, walks)
    @name = name
    @at_bats = at_bats
    @runs = runs
    @hits = hits
    @rbis = runs_batted_in
    @walks = walks
  end

  def name
    @name
  end

  def on_base_percentage
    if(@at_bats == 0 && @walks == 0)
      percentage = 0
    else
      upper = @hits.to_f + @walks.to_f
      lower = @at_bats.to_f + @walks.to_f
      percent = upper / lower
      percent.round(4)
    end
  end

end

def main
  players = []
  # throw away headers
  gets
  # read data
  while (next_line=gets)
    fields = next_line.split(',')
    if fields.size != 6
      puts "Error, malformed line: " + next_line
    else
      p = Player.new(fields[0], fields[1].to_i, fields[2].to_i,
                     fields[3].to_i, fields[4].to_i, fields[5].to_i)
      players << p
    end
  end
  # output results
  players.each { |player|
    puts "#{player.name}: #{player.on_base_percentage}"
  }
end

main


