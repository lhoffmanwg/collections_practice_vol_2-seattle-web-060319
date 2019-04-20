require 'pry'

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
      
    end 
  end
  
  new_hash.each do |actual_name, number_of_occurances|
    new_ary.push({:count=>number_of_occurances, :name=>actual_name}) 
  end  
  
  return new_ary
end  

def merge_data(ary_of_hashes, another_ary_of_hashes)
  merged_ary = []
  ary_of_hashes.each do |element|
    element.each do |name_lable, name_value|
      another_ary_of_hashes.each do |detail_element|
         detail_element.each do |name_key, hash|
            if name_value == name_key
              merged_ary.push(element.merge(hash))   
           end
         end
       end  
    end
  end  
  #binding.pry
  return merged_ary
end  

def find_cool(cool_ary)
  new_ary = []
  cool_ary.each do |element|
    element.each do |key, value|
      if value == "cool"
        new_ary.push(element)
      end
    end  
  end  
  
  return new_ary
end  