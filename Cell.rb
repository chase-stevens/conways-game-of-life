class Cell
  def initialize(grid: grid, x: x, y: y, alive: alive)
    @grid = grid
    @x = x
    @y = y
    @alive = alive
  end

  def life_check
    if alive? && (neighbor_alive_count < 2 || neighbor_alive_count > 3)
      true
    elsif dead? && neighbor_alive_count == 3
      true
    else
      false
    end
  end

  def alive?
    @alive
  end

  def dead?
    !@alive
  end

  def toggle
    @alive = !@alive
  end

  def neighbors
    [
      @grid.find_cell(x: @x-1, y: @y+1), @grid.find_cell(x: @x+0, y: @y+1), @grid.find_cell(x: @x+1, y: @y+1),
      @grid.find_cell(x: @x-1, y: @y+0),                                    @grid.find_cell(x: @x+1, y: @y+0),
      @grid.find_cell(x: @x-1, y: @y-1), @grid.find_cell(x: @x+0, y: @y-1), @grid.find_cell(x: @x+1, y: @y-1)
    ]
  end

  def neighbor_alive_count
    neighbors.reduce(0){ |count, el| count + (el&.alive? ? 1 : 0) }
  end
end