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
