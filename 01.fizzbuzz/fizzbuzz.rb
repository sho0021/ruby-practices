20.times do |n|
    if (n+1) % 15 == 0
        puts "fizzbuzz"
    elsif (n+1) % 5 ==0
        puts "buzz"
    elsif (n+1) % 3 ==0
        puts "fizz"
    else
        puts (n+1)
    end
end

