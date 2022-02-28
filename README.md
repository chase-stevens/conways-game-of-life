# Conway's Game of Life
https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life

## How to Run
ruby app.rb WIDTH HEIGHT SEEDS

## Things I Would Improve With Additional Time
- Bug when colliding with south and/or east wall
  - Reads other side of nested array as neighbors
  - Repro with Glider example or Lightweight Spaceship - Left to Right example
- Adding testing with rspec
  - Game initialization
  - Game states with given seed after X iterations
- Better error handling for invalid arguments on run
- Use Matrix instead of nested array to simplify code
- Rename life_check method as method name is misleading

## Examples
### Block
#### ruby app.rb 20 20 10,10 10,11 11,10 11,11

### Beehive
#### ruby app.rb 20 20 9,9 9,10 10,8 10,11 11,9 11,10

### Blinker
#### ruby app.rb 20 20 10,10 11,10 12,10

### Beacon
#### ruby app.rb 20 20 8,8 8,9 9,8 10,11 11,10 11,11

### Toad
#### ruby app.rb 20 20 8,8 8,9, 8,10 9,7 9,8 9,9

### Glider
#### ruby app.rb 20 20 2,2 3,3 3,4 4,2 4,3

### Lightweight Spaceship - Right to Left
#### ruby app.rb 40 20 10,35 10,36 11,33 11,38 12,32 13,32 13,38 14,32 14,33 14,34 14,35 14,36 14,37


### Lightweight Spaceship - Left to Right
#### ruby app.rb 40 20 10,1 10,4 11,5 12,1 12,5 13,2 13,3 13,4 13,5