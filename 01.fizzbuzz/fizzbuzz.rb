a=1

20.times{

if a%15 == 0 
  puts "fizzbuzz"
elsif a%5 ==0
  puts "buzz"
elsif a%3 ==0
  puts "fizz"
else 
  puts a
end

a += 1
}