class Pen
  attr_reader :clicked, :ink_level
  
  def initialize(color = "red", clicked = false)
    @ink_level = 10
    @clicked = clicked
    @color = color
  end

  def click!
    @clicked = !@clicked
  end

  def write(string)
    written_string = ""
    if clicked
      string.each_char do |char|
        break if @ink_level == 0
        written_string << char
        @ink_level -= 1 if char !=" "
      end
    end
    puts(written_string)
    return(written_string)
  end
end