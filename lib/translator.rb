# require modules here
#require "pry"
require "yaml"
def load_library(emojis)
new_emojis = {}
emoticons = YAML.load_file(emojis)
emoticons.each{|key,value|
  new_emojis[key] = {
   english: value[0],
   japanese: value[1]
  
}}
#binding.pry
new_emojis
end

def emoticon_exist(emojis, emoticon)
  
 organized_library = load_library(emojis)
 exist = false
 
 organized_library.each do |key, value|
   
   if organized_library[key][:english] == emoticon || organized_library[key][:japanese] == emoticon
     
     exist = true
     
   end
   
 end
  
  return exist
  
end

def get_japanese_emoticon(emojis, emoticon)
  # code goes here
  
  library = load_library(emojis)
  
  if emoticon_exist(emojis, emoticon) == false
    
   sorry_message = "Sorry, that emoticon was not found"
    return  sorry_message
    
  end
  
  library.each do |key, value|
  
    if library[key][:english] == emoticon
      return library[key][:japanese]
    end
    
  end
  
end

def get_english_meaning(emojis, japanese_emoticon)
  # code goes here
  sorry_message = "Sorry, that emoticon was not found"
  library = load_library(emojis)
  
  if emoticon_exist(emojis, japanese_emoticon) == false
    
 return sorry_message
  end
  
  library.each do |key,value|
    
    if library[key][:japanese] == japanese_emoticon
      
      return key
    end
    
  end 
  
end 