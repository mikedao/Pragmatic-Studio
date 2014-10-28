module Rankable
  def thumbs_up
    self.rank += 1
  end

  def thumbs_down
    self.rank -= 1
  end

  def hit?
    if self.rank >= 10
      return true
    else
      false
    end

  end

  def status
    hit? ? "Hit" : "Flop"
  end

  def <=>(other)
    other.rank <=> @rank
  end


end
