# プログラム上で区分や状態を管理したいときもシンボルが使われる

# タスクの状態を整数値で管理する（処理効率は良いが、可読性が悪い）
status = 2

case status
when 0 # todo
  puts 'これからやります'
when 1 # doing
  puts '今やってます'
when 2 # done
  puts 'もう終わりました'
end
#=> "もう終わりました"


# タスクの状態をシンボルで管理する（処理効率も可読性も良い）
status = :done

case status
when :todo
  puts 'これからやります'
when :doing
  puts '今やってます'
when :done
  puts 'もう終わりました'
end  
#=> "もう終わりました"