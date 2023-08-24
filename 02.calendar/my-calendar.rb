require 'optparse'
require 'date'

#今日の日付を取得
today = Date.today

#オプションの引数を取得
options = ARGV.getopts('m:', 'y:')

#表示する年月を選択
if options['y'] == nil
  year = today.year
else
  year = options['y'].to_i
end
if options['m'] == nil
  month = today.month
else
  month = options['m'].to_i
end

#1日の曜日と、その月の最終日を取得
firstwday = Date.new(year,month,1).wday
lastday = Date.new(year,month,-1).day

#出力
puts "#{month}月 #{year}".center(21)
puts " 日 月 火 水 木 金 土"
firstwday.times do
  print '   '
end
wday = firstwday
1.upto(lastday) do |date|
  print date.to_s.rjust(3)
  if wday == 6
    print "\n"
    wday = 0
  else
    wday += 1
  end
  if date == lastday
    print "\n"
  end
end
