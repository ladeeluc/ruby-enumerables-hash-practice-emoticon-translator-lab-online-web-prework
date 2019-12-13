require "yaml"
require "pp"

def load_library(file)
  data = YAML.load_file(file) # pulled file into this file
  emo_hash = {} # created hash for new hash
  values = { # coverted string into hash
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  pp data
  values.each do|meaning,emoticon|
    emoticon.each do |emoji|
      if emo_hash[emoji] == nil
        emo_hash[emoji]= {}
      if emo_hash[emoji][get_meaning][get_emoticon] == nil
        emo_hash[emoji][get_meaning][get_emoticon] = {}
  #if emo_hash[get_meaning][get_emoticon] == nil
    #emo_hash
  #values
          end
      end
    end
end
end
def get_japanese_emoticon(western_emoji)
  # code goes here
end

def get_english_meaning(emoji)
  # code goes here
end
# require modules here
require 'pry'
require "yaml"

def load_library(emojo_file)
  data = YAML.load_file(emojo_file)
    
  hash = {
          'get_meaning' => {},
          'get_emoticon' => {}
  }

  data.each do|key,value|
  hash['get_emoticon'][value[0]] = data[key][1]
  hash['get_meaning'][value[1]] = key
  end
  hash
end




def get_japanese_emoticon(emojo_file,emoticon)
  j_emoji = load_library(emojo_file)['get_emoticon'][emoticon]
  j_emoji ? j_emoji : "Sorry, that emoticon was not found"
  # if j_emoji == true
  # elsif j_emoji
  #   if j_emoji == nil
  #   puts "Sorry, that emoticon was not found"
  # end 
#end
end

def get_english_meaning(emojo_file,emoticon)
  e_word = load_library(emojo_file)['get_meaning'][emoticon]
  e_word ? e_word : "Sorry, that emoticon was not found"
end