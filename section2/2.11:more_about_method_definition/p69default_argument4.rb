# システム日時や他のメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
    puts "time: #{time}, message: #{message}"
end

def bar
    'BAR'
end

foo