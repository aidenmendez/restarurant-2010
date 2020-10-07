class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    opening_int = opening_time.to_i
    closing_time = opening_int + hours
    closing_time_s = "#{closing_time.to_s}:00"
    closing_time_s
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    opening_time_int = opening_time.to_i
    if opening_time_int <= 12
      true
    elsif opening_time_int > 12
      false
    end
  end

  def menu_dish_names
    dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(hours)
    opening_time_int = opening_time.to_i
    closing_time = opening_time_int + hours

    if closing_time == 12
      "#{name} will be closing at #{closing_time.to_s}:00PM"
    elsif closing_time == 24
      stand_time = closing_time - 12
      "#{name} will be closing at #{stand_time.to_s}:00AM"
    elsif closing_time < 12
      "#{name} will be closing at #{closing_time.to_s}:00AM"
    elsif closing_time >= 12
      stand_time = closing_time - 12
      "#{name} will be closing at #{stand_time.to_s}:00PM"
    end

    
  end

end