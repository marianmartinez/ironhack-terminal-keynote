require 'pry'
require 'highline'

## TO DO:  Add command text support, refactor.

class TerminalKeynote

	def initialize(file_name)
		@screen_size = HighLine::SystemExtensions.terminal_size
	  @file_reader = FileReader.new(file_name)
	  @slides = []
	end

	def start
	  lines_readed = @file_reader.get_lines
	  @slides = HyphenRemover.new.get_text_lines(lines_readed)
	  print_lines(@slides)
	end

	private

	def print_lines(lines_array)
	  console_height = @screen_size[0]
	  console_width = @screen_size[1]
	  slides = lines_array
	  slides.each do |line|
	    i= 0
	    string_length = line.size
	    string_width = console_width / 2 - string_length / 2
	    string_height_top = (console_height -2) / 2
	    string_height_bottom = ((console_height -2) / 2.0).ceil
	    string_height_top.times do
	      i += 1
	      print "#{i} \n"
	    end
		  string_width.times do
		      print " "
		  end
	    print line
	    string_height_bottom.times do
	      i += 1
	      print "#{i} \n"
	    end
	    user_input = gets.chomp
	  end
	end
end

class FileReader

  def initialize (file_name)
    @file_reader = IO.read(file_name)
  end

  def get_lines
    all_lines=[]
    @file_reader.each_line do |line|
        all_lines << line
    end
    return all_lines
  end
end

class HyphenRemover

  def get_text_lines(lines_array)
    lines_array.delete("----\r\n")

    return lines_array
  end
end

mykeynote = TerminalKeynote.new("keynote.txt")
mykeynote.start








