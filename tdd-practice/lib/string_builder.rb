
class StringBuilder
  def initialize
    @str = ""
  end

  def add(str)
    @str += str
  end

  def size
    @str.length
  end

  def output
    @str
  end
end