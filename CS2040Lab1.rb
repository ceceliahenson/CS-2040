# CS 2040
# Lab 1
# Spring 2023
# Author: Cecelia Henson

on_base = 0.0
slugging = 0.0
number_at_bat = 0.0
base_percentage = 0.0
bat_appearence = 0.0
slug_percent = 0.0
first_base = 0

while ((line = gets))
       # checking at bat
    at_bat = line.to_i
    if at_bat >= 0 && at_bat <= 4
        number_at_bat += 1
    end

    # checking number of appearences
    appear = line.to_i
    if appear >= -1 && appear <=4
        bat_appearence += 1
    end

    # checking number of times batters get on base
    base_number = line.to_i
    if base_number >= 1 && base_number <= 4
        on_base += 1
    elsif base_number == -1
        on_base += 1
    else
        on_base += 0
    end

    # checks the total number of bases reached 
    slug_number = line.to_i
    if slug_number == 1
        slugging += 1
        first_base += 1
    elsif slug_number == 2
        slugging += 2
    elsif slug_number == 3
        slugging += 3
    elsif slug_number == 4
        slugging += 4
    else
        slugging += 0
    end

end


#The goal of the program is to compute and display three statistics: 
#the number of times the batter reaches at least first base, 
#the "on-base percentage", 
#and the "slugging percentage". More specifically,

#The on-base percentage is defined as the number of times the batter gets on base (-1, 1-4) 
#divided by the number of appearances, where an appearance includes everything (walks, outs, or any hit).

#The slugging percentage is the total number of bases reached (1 for a single, 2 for a double, etc.) 
#divided by the number of at-bats (0-4). Note walks are not counted as part of the slugging percentage, either as an at-bat or as a hit.

def on_base_percentage(on_base, bat_appearence)
    if bat_appearence == 0.0
        base_percentage = 0.0
    else
        base_percentage = (on_base / bat_appearence)
        base_percentage.round(3)
    end
end

def slugging_percentage(slugging, number_at_bat)
    if number_at_bat == 0
        slug_percent = 0.0
    else
        slug_percent = (slugging / number_at_bat)
        slug_percent.round(3)
    end
end

puts "On-base percentage: #{on_base_percentage(on_base, bat_appearence)}" 
puts "Slugging percentage: #{slugging_percentage(slugging, number_at_bat)}"
