# to_hexメソッド

# リファクタリング前
# def to_hex(r, g, b)
#   '#' + 
#     r.to_s(16).rjust(2, '0') +
#     g.to_s(16).rjust(2, '0') +
#     b.to_s(16).rjust(2, '0')
# end

# リファクタリング①
# def to_hex(r, g, b)
#   hex = '#'
#   [r, g, b].each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

# リファクタリング②
def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end


# to_intsメソッド
# リファクタリング前
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   ints = []

#   [r, g, b].each do |s|
#     ints << s.hex
#   end
#   ints
# end

# リファクタリング①
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]

#   [r, g, b].map do |s|
#     s.hex
#   end
# end

# リファクタリング②
# def to_ints(hex)
#   r, g, b = hex.scan(/\w\w/)
#   [r, g, b].map do |s|
#     s.hex
#   end
# end

# リファクタリング③
def to_ints(hex)
  hex.scan(/\w\w/).map do |s|
    s.hex
  end
end