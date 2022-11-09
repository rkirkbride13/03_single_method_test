def make_snippet(str)
  split_words = str.split(" ")
  split_words.size > 5 ? "#{split_words[0..4].join(" ")}..." : str
end

def count_words(str)
  number_of_words = str.split(" ").size
end