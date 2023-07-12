# %q! !はシングルクオートで囲んだことと同じになる
puts %q!He said, "Don't speak."!

# %Q! !はダブルクオートで囲んだことと同じになる（改行文字や式展開が使える）
something = "Hello."
puts %Q!He said, "#{something}"!

# %! !もダブルクオートで囲んだことと同じになる
something = "Bye."
puts %!He said, "#{something}"!