def janken
    puts "0(グー)1(チョキ)2(パー)"
    man = gets.chomp.to_i
    puts "ホイ！"
    puts "-----------"
    com = rand(2)
    patterns = ["グー", "チョキ", "パー"]
    puts "あなた：#{patterns[man]}を出しました"
    puts "相手：#{patterns[com]}を出しました"
    puts "-----------"
    #judge
    case [man, com]
    when [0, 0], [1, 1], [2, 2]#drow
        puts "あいこで..."
        return true
    when [0, 1],[1, 2], [2, 0]#win
        return false
    when [0, 2],[1, 0], [2, 1]#lose
        return false
    else
        puts"何も出さなかったの？\nもう一度！じゃんけん..."
        return true
    end
end

def look_this_way
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    man = gets.chomp.to_i
    puts "ホイ！"
    puts "-----------"
    com = rand(3)
    patterns = ["上", "下", "左", "右"]
    puts "あなた：#{patterns[man]}"
    puts "相手：#{patterns[com]}"
    puts "-----------"
    #judge
    case
    when man >= 4
        puts"パターン以外は反則です!もう一度!"
        return true
    when man == com
        puts "勝負あり"
        return false
    when man != com
        return true
    end
end

#ゲームスタート
puts "じゃんけん..."
next_game = true
while next_game do
    next_game = janken
end
#あっち向いてホイ
agein = true
while agein do
    agein = look_this_way
end
