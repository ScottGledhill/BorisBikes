class Bikes

  def working?
    @working
  end

  def initialize
    @working = true
  end

  def report_broken
    @working = false
  end
end
