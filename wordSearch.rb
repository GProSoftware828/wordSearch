File.open("sentence.txt", 'w+') { |f| f.write("This is an example sentence with a lof of words and one of the words is nuance which is the exace word we are looking for herein.")}

@reader = File.read("sentence.txt")
@text = @reader.split

@list1 = {limit: 3, value: 30, words: ["nuance"]}

seek = (@text &list1[:words].map(&:downcase))

if seek.length > 0
	@score = @list1[:value] * (seek.length <= 3? seek.length : 3)
end

p seek
p @score