boards = [
  "~~BBBB~~C",
  "~~~~~~~BC",
  "SSS~~~~B~",
  "~~CC~~~B~",
  "~~~~~~~B~",
  "~~~~~SSS~",
  "S~~~CC~~~",
  "S~~~~~C~~",
  "S~~~~~C~~",
]



  boards.each do |row|
    bees = row.split("").count "B"
    sees = row.split("").count "C"
    esses = row.split("").count "S"
    hits = bees + sees + esses
    puts hits.to_i
    puts
    end
