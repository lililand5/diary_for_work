puts "Привет, я дневник\nЯ сохраню всё, что ты напишешь до строчки \"/\" в файл."

current_path = File.dirname(__FILE__) + "/"

line      = nil
all_lines = []


while line != "/" do
  line = STDIN.gets.chomp
  all_lines << line
end

time        = Time.now

file_name   = "diary/" + time.strftime("%Y-%m-%d" + ".txt")

time_string = time.strftime("%H:%M")

separator = "-----------------------------"

file = File.new(current_path + file_name, "a:UTF-8")

file.print("\n" + time_string + "\n")

all_lines.pop

all_lines.each{ |str| file.puts(str) }

file.puts(separator)

file.close

puts "Запись сохранена в файл #{file_name}"





