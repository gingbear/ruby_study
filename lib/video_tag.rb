 date, name = Dir.pwd.split('/').last.split(' - ')

puts date
puts name
def tags_from_file_name(file_name)
  data = file_name.split(' - ')
  title = data.first
  matches = file_name.match(/(.*) - (.*) 「(.*) (.*)」/)  
  name = matches[1]
  number = matches[2]
  title = matches[4]
  return matches[1..4] 
end
Dir.glob("*.mp4").map { |file|
  [file] + tags_from_file_name(file)
}.map { |file_name, _, number, number_name, title|
  "-year '#{date}' -show '#{name}' -track '#{number}' -episodeid '#{number_name}' -song '#{title}' '#{file_name}'"
}.map { |query|
  # `mp4tags #{query}`
  puts "mp4tags #{query}"
}

