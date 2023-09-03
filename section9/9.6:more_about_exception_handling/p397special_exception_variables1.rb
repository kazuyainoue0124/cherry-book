# Rubyでは最後に発生した例外は組み込み変数の$!に格納される
# バックトレース情報は$@に格納される

# rescue節で例外情報を変数eに格納する
begin
  1 / 0
rescue => e
  puts "#{e.class} #{e.message}"
  puts e.backtrace
end
#=> ZeroDivisionError divided by 0
#   (バックトレースは省略)

# 組み込み変数の$!と$@に格納された例外情報を使う
begin
  1 / 0
rescue
  puts "#{$!.class} #{$!.message}"
  puts $@
end
#=> ZeroDivisionError divided by 0
#   (バックトレースは省略)