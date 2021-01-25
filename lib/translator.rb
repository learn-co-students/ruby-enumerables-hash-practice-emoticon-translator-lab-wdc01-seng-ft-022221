# require modules here
require 'pry'
require 'yaml'


def load_library(filepath)
  library = YAML.load_file(filepath)
  lang_keys = [:english, :japanese]
  library.map do |meaning, emoticons| 
    library[meaning] = Hash[lang_keys.zip(emoticons)]
  end 
  library
end

def get_japanese_emoticon (filepath, e_icon)
  library = load_library(filepath)
  
  message = "Sorry, that emoticon was not found"
  
  library.each do |meaning, guide|
    if guide.value? (e_icon)
      message = guide[:japanese]
    end 
  end 
  message
end

def get_english_meaning (filepath, j_icon)
  library = load_library(filepath)
  
  message = "Sorry, that emoticon was not found"
  
  library.each do |meaning, guide|
    if guide.value? (j_icon)
       message = meaning
    end 
  end 
  message
end