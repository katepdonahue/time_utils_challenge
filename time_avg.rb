
def average_time_of_day(array)
  array.map do |time|
    time.split(/:|(?=pm)/)
  end
end
