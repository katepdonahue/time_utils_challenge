require 'debugger'


def display_min(minutes)
  if minutes < 10
    minutes = "0#{minutes.to_i}"
  else
    minutes = "#{minutes.to_i}"
  end
end

class Array

  def split_times
    self.map do |time|
      time.split(/:|(?=pm|am)/)
    end
  end

  def min_convert
    minute_array = []
    split_times.each do |time_array|
      minute_array << ((time_array[0].to_i * 60) + time_array[1].to_i)
    end
    minute_array
  end

  def average_time_of_day
    # average time in minutes
    min_sum = 0
    min_convert.each do |time_in_minutes|
      # debugger
      min_sum += time_in_minutes.to_f
    end
    # debugger
    minutes = (min_sum / self.size) % 60
    # debugger
    hours = ((min_sum / self.size) - minutes) / 60
    # debugger
    "#{hours.to_i}:#{display_min(minutes)}"
  end

  # def average_time_of_day(array_of_arrays)
  #   # average_minute
  #   array.map do |time|
  #     time.split(/:|(?=pm)/)
  #   end
  # end

end




