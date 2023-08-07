# 英文からプログラミング言語っぽい単語を抜き出す例
text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript ar different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/) #=> ["Ruby", "Python", "Java", "JavaScript"]