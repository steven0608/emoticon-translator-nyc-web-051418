# require modules here
require "yaml"
path="./lib/emoticons.yml"

def load_library(path)
  emoticons = YAML.load_file(path)
  hash = {"get_meaning" => {} , "get_emoticon" => {}}
  emoticons.each do |x,y|
    english =y[0]
    japanese =y[1]
    hash["get_meaning"][japanese] = x
    hash["get_emoticon"][english] = japanese
  end
  hash
end
load_library(path)

def get_japanese_emoticon(path,emoticon)
  # code goes here
  hash = load_library(path)
  if hash["get_emoticon"][emoticon]
    hash["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path,emoticon)
  # code goes here
  hash = load_library(path)
  if hash["get_meaning"][emoticon]
    hash["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
