def stock(days)

    arr = []
    days.combination(2) {|a| arr.push(a)}     #Makes subsets of days in ascending order
    profit = 0
    bestDays = []
    arr.each do |x|                                 #Checks for the most profit
        if (x[1] - x[0] > profit) && (x == x.sort)
            profit = x[1] - x[0]
            bestDays = []
            bestDays.push(days.each_index.select { |i| days[i]== x[0]}.first)    #Pushes the index of max and min values 
            bestDays.push(days.each_index.select { |i| days[i]== x[1]}.last)     #ignoring the duplicates.
        end
    end
    


    p bestDays                           #Returns and prints the best days
    return bestDays
end


#Test here!
stock([10,2,4,1,6,3,9,10,6])
