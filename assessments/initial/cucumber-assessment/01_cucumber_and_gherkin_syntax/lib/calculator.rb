class Calculator

  def push(n)
    @args ||= []
    @args << n
  end

  def push_special(special_constant_name)
    push case special_constant_name
      when 'PI' then 3.1416
      when 'speed of light' then 300000
      when 'speed of sound' then 343
    end
  end

  def add
    @current_result = @args.inject(0) { |n, sum| n+sum }
  end

  def subtract
    @current_result = @args.shift - add
  end

  def divide
    @args[0].to_f / @args[1].to_f
  end

  def memadd
    @memory = @current_result || 0
  end

  def clear
    @current_result = nil
    @args = nil
    0
  end

  def recall
    push(@memory || 0)
    current_display
  end

  def current_display
    @args.last || 0
  end

end