def some_method
    <<~TEXT
      \  各行の行頭に半角スペースを2文字入れます。
      \  このとき行頭はバックスラッシュで指定します。
    TEXT
end

puts some_method