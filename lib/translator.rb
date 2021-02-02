# require modules here
require 'yaml'
require 'pry'


def load_library(emoji_file)
  new_file = YAML.load_file(emoji_file)

  final_result= new_file.each_with_object ({}) do |(descriptor, emoji), new_hash|
    new_hash[descriptor]= {"english": emoji[0], "japanese": emoji[1]}
  end
  # binding.pry
end


def get_japanese_emoticon(emoji_file, emoticon)
  emoticons = load_library(emoji_file)
# binding.pry
 counter = 0
  while counter<emoticons.values.length do
    if emoticons.values[counter][:english] == emoticon
      return emoticons.values[counter][:japanese]
    end
    counter +=1
  end
  return  "Sorry, that emoticon was not found"
end
# binding.pry





def get_english_meaning(emoji_file, emoticon)
  emoticons = load_library(emoji_file)
  # binding.pry
  counter = 0
   while counter<emoticons.values.length do
     if emoticons.values[counter][:japanese] == emoticon
       return emoticons.keys[counter]
     end
     counter +=1
   end
   return  "Sorry, that emoticon was not found"


end
