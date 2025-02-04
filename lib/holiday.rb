require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  item = ""
  holiday_hash.each do |season, holidays_list|
      holidays_list.each do |holiday, supply_array|
        if holiday == :fourth_of_july
          item = supply_array[1]
        end
      end
    end
    item
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season, holidays_list|
      holidays_list.each do |holiday, supply_array|
        if holiday == :christmas || holiday == :new_years
          holiday_hash[season][holiday] << supply
        end #if
      end #holidays_list each
    end #holiday_hash each

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    holiday_hash.each do |season, holidays_list|
      holidays_list.each do |holiday, supply_array|
        if holiday == :memorial_day
          supply_array.push(supply)
        end
      end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.each do |season, holidays_list|
      if season == :winter
        winter_supplies = holidays_list.values.flatten
      end
    end
  winter_supplies

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

    holiday_hash.each do |season, holidays_list|
      disp_season = season.to_s.capitalize
      puts "#{disp_season}:"
      holidays_list.each do |holiday, supply_array|
        holiday_words = holiday.to_s.split("_")
        disp_holiday = ""
        holiday_words.each {|word| word.capitalize! }
        disp_holiday =  holiday_words.join(" ")
        puts "  #{disp_holiday}: #{supply_array.join(', ')}"
      end #holidays_list each
    end #holiday_hash each
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |season, holidays_list|
      holidays_list.each do |holiday, supply_array|
        if 
          supply_array.include?("BBQ")
          bbq_array << holiday
        end
      end
    end
    bbq_array
end







