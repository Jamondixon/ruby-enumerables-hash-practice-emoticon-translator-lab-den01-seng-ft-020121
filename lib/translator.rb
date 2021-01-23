# require modules here
require 'pry'
require 'yaml'


  # code goes here
  def load_library(path)
    final_hash = {}
    YAML.load_file(path).each do |key, value|
      final_hash[key] = {}
      final_hash[key][:english] = value[0]
      final_hash[key][:japanese] = value[1]
    end
    final_hash
  end



  def get_japanese_emoticon (file_path, emoticon) #takes Western emoticon, :) and translate it to Japanese emoticon
    if load_library(file_path)[:get_emoticon][emoticon]
    load_library(file_path)[:get_emoticon][emoticon]
    else "Sorry, that emoticon was not found"
    end
  end


  def get_english_meaning (file_path, emoticon) #takes a Japanese emoticon and returns its meaning in English
    if load_library(file_path)[:get_meaning][emoticon]
      load_library(file_path)[:get_meaning][emoticon]
    else "Sorry, that emoticon was not found"
    end
  end
