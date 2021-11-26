def stock(days)
  arr = []
  days.combination(2) { |a| arr.push(a) }     # Makes subsets of days in ascending order
  profit = 0
  bestDays = []
  arr.each do |x| # Checks for the most profit
    next unless (x[1] - x[0] > profit) && (x == x.sort)

    profit = x[1] - x[0]
    bestDays = []
    bestDays.push(# Pushes the index of max and min values
days.each_index.select do |i|
  days[i] == x[0]
                    end.first
    bestDays.push(days.each_index.select { |i| days[i] == x[1] }.last) # refactored for the duplicates.
  end

  p bestDays # Returns and prints the best days
  bestDays
end

# Test here!
time = Time.now
num = 5000                                                 # Cap = 5000 numbers @28 seconds
stock(Array.new(num) { rand(1..1500) })
puts "Took a total of #{Time.now - time}s with #{num} numbers"
