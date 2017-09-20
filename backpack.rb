class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def prepare
    prepare_for_rainy_weather
    prepare_for_cold_weather
    bring_pants_and_shirt
    bring_gym_shoes_on_gym_days
    bring_lunch_on_weekdays
  end


  def items
    @items
  end

  def weather_and_day
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    return weather, day_of_week
  end

  def prepare_for_rainy_weather
    weather,day_of_week = weather_and_day

    if weather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    end
  end

  def prepare_for_cold_weather
    weather,day_of_week = weather_and_day
    if weather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    end
  end

  def bring_pants_and_shirt
      @items << 'pants'
      @items << 'shirt'
  end

   def bring_gym_shoes_on_gym_days
    weather,day_of_week = weather_and_day
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

   def bring_lunch_on_weekdays
     weather,day_of_week = weather_and_day
      if day_of_week != 'saturday' && day_of_week != 'sunday'
        @items << 'packed lunch'
     end
   end
  # Prints a summary packing list for Melinda's backpack
  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|

      output << "- #{item}"
    end
    output.join("\n")
  end

end
