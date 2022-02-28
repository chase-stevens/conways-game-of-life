class Grid
  FRAMES_PER_SECOND = 4

  def initialize(width, height, seed)
    @grid = []
    @width = width
    @height = height
    @seed = seed # [[10, 10]]
    set_initial_grid
  end

  def set_initial_grid
    @height.times do |x|
      @grid << []
      @width.times do |y|
        @grid[x] << Cell.new(grid: self, x: x, y: y, alive: false)
      end
    end

    @seed.each do |s|
      find_cell(x: s[0], y: s[1]).toggle
    end
    print_grid
  end

  def tick
    cells_to_toggle = []
    @height.times do |x|
      @width.times do |y|
        cell = find_cell(x: x, y: y)
        cells_to_toggle << find_cell(x: x, y: y) if find_cell(x: x, y: y).life_check
      end
    end

    cells_to_toggle.each(&:toggle)
    sleep(1.0/FRAMES_PER_SECOND.to_f)
    print_grid
  end

  def find_cell(x: x, y: y)
    @grid.dig(x, y)
  end

  def print_grid
    @height.times do |x|
      @width.times do |y|
        print find_cell(x: x, y: y).alive? ? "X" : "_"
      end
      print "\n"
    end
  end
end