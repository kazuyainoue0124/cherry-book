user = nil

# こうではなく...
if user == nil
    'nilです'
end

# こう書く(unless userでも可)
if !user
    'nilです'
end

# またはnil?メソッドを使う
if user.nil?
    'nilです'
end
