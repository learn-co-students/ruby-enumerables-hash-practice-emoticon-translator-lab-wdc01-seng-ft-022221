# require modules here
require 'yaml'
require 'pry'


def load_library(emoji_file)
  final_hash = {}
  new_file = YAML.load_file(emoji_file)

  final_result=  new_file.each_with_object ({}) do |feeling, final_array|
        feeling.each do |language|
            if !final_array[feeling][language]
            final_array[feeling][language]= []
            end
        end
  end
end

  # new_file [feeling][language] = emoji
binding.pry


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
