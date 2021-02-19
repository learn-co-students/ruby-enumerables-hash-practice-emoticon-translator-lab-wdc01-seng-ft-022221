# require modules here
#require "pry"
require "yaml"

def load_library(emojis)
#binding.pry 

#new_emojis = {"english": {},"japanese": {}}


emoticons = YAML.load_file(emojis)

if emoticons do |emoticons_2|
  emoticons_2 == {"english": {},"japanese": {}}
  
 #binding.pry  
 end
emoticons_2
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end