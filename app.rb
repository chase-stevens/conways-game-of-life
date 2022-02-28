require "./Cell"
require "./Grid"

width = ARGV[0].to_i
height = ARGV[1].to_i
seed = []

ARGV.drop(2).each do |arg|
  seed << arg.split(",").map(&:to_i)
end

grid = Grid.new(width, height, seed)

while true
  grid.tick
end

# Block
# ruby app.rb 20 20 10,10 10,11 11,10 11,11

# Beehive
# ruby app.rb 20 20 9,9 9,10 10,8 10,11 11,9 11,10

# Blinker
# ruby app.rb 20 20 10,10 11,10 12,10

# Beacon
# ruby app.rb 20 20 8,8 8,9 9,8 10,11 11,10 11,11

# Toad
# ruby app.rb 20 20 8,8 8,9, 8,10 9,7 9,8 9,9

# Glider
# ruby app.rb 20 20 2,2 3,3 3,4 4,2 4,3

# Lightweight Spaceship
# ruby app.rb 40 20 10,35 10,36 11,33 11,38 12,32 13,32 13,38 14,32 14,33 14,34 14,35 14,36 14,37