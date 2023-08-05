# シンボルは「同じシンボルであれば全く同じオブジェクト」である
# そのため「大量の同じ文字列」と「大量の同じシンボル」を作成するとシンボルのほうがメモリ効率が良い

# 同じシンボルは同じオブジェクトのため全て同じID
puts :apple.object_id #=> 1224988
puts :apple.object_id #=> 1224988
puts :apple.object_id #=> 1224988

# 同じ文字列でも3つとも異なるID
puts 'apple'.object_id #=> 60
puts 'apple'.object_id #=> 80
puts 'apple'.object_id #=> 100