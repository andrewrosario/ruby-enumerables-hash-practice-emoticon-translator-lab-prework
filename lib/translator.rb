# require modules here
require "yaml"


def load_library(j_emotes)
  transl = {"get_meaning" => {}, "get_emoticon" => {}}
  data = YAML.load_file(j_emotes)
  data.each_pair do |key, value|
    transl["get_meaning"][value[1]] = key
    transl["get_emoticon"][value[0]] = value[1]
  end
  return transl
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library("./lib/emoticons.yml") 

