class StrSequence

  def initialize(str, num)
    @str = str
    @suffix_number = num
  end

  def up
    combine(@str, @suffix_number + 1)
  end

  def up!
    @suffix_number += 1
    combine(@str, @suffix_number)
  end

  def down
    combine(@str, @suffix_number - 1)
  end

  def down!
    @suffix_number -= 1
    combine(@str, @suffix_number)
  end

  def sequence=(num)
    @suffix_number = num
    combine(@str, @suffix_number)
  end

  def to_s
    combine(@str, @suffix_number)
  end

  private
    def combine(str, num)
      str + "_" + num.to_s
    end
  # end private
end
