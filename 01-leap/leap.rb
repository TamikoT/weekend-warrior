# LEAP YEAR
# on every year that is evenly divisible by 4 (true)
# except every year that is evenly divisible by 100 (false)
# unless the year is also evenly divisible by 400 (true)

def leap_year?(year)
    if year % 400 == 0
      true
    elsif (year % 4 == 0 && year % 100 == 0)
      false
    elsif year % 4 == 0
      true
    else
      false
  end
end
