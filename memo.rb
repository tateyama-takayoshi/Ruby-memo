require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
puts "数字を入力してください"
memo_type = gets.to_i #キーボードで入力した数字を変数に代入

if memo_type == 1 #(新規でメモを作成)
    puts "拡張子を除いたファイル名を入力してください"
    file_titl = gets.chomp.to_s
    puts "メモしたい内容を入力してください"
    puts "完了したら　Ctrl＋Dを押してください"
    input = readlines.map(&:chomp!)
    CSV.open("#{file_titl}.csv", "w") do |csv|
        csv << input
    end
elsif memo_type == 2 #(既存のメモ編集する)
    puts "編集したいメモの拡張子を除いたファイル名を入力してください"
    file_titl = gets.chomp.to_s
    puts "メモしたい内容を入力してください"
    puts "完了したら　Ctrl＋Dを押してください"
    input = readlines.map(&:chomp!)
    CSV.open("#{file_titl}.csv", "a") do |csv|
        csv << input
    end
else
    puts "1か2の数字を入力してください"
end