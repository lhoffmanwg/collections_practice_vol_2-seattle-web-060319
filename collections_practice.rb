#require 'pry'

def count_elements(name_ary)
  new_hash = {}
  new_ary = [] 
  
  name_ary.each do |name_hash|
    name_hash.each do |name_key, name_value|
      count = new_hash[name_value]
      if count == nil
        new_hash[name_value] = 1 
      else
        new_hash[name_value] = count + 1 
      end  
      #binding.pry
    end 
  end