# require modules here
require 'pry'
require 'yaml'


  # code goes here
  def load_library(file_path)
    # code goes here
    file = YAML.load_file(file_path)
    dictionary = {}

    file.each do |name, emoji_array|
      dictionary[name] = {:english => {}, :japanese => {}}
      emoji_array.each_with_index do |emoji, index|
        if index == 0
          dictionary[name][:english] = emoji
        elsif  index == 1
          dictionary[name][:japanese] = emoji
        end
      end
    end
    dictionary
  end


def get_english_meaning(file_path, emoji)
  # code goes here
dictionary = load_library(file_path)
  english_name = ""
  dictionary.each do |name, value|
      if emoji == value[:japanese]
            return english_name = name
      else
          english_name = "Sorry, that emoticon was not found"
      end
    end
    english_name
  end

  def get_japanese_emoticon(file_path, emoticon)
      updated_lib = load_library(file_path)
      jap_name = ""
      updated_lib.each do |name, value|
        if emoticon == value[:english]
            jap_name = name
        else
          return "Sorry, that emoticon was not found"
        end
      end
      jap_name
    end
