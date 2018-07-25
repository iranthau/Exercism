module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    meaningful_words.each_with_object(Hash.new(0)) do |word, count|
      count[word] += 1
    end
  end

  private

  attr_reader :phrase

  def meaningful_words
    processed_words.map { |word| word.chomp("'").reverse.chomp("'").reverse }
  end

  def processed_words
    words.map { |word| word.gsub(/[^0-9'a-z ]/i, '').downcase }
  end

  def words
    phrase.split(/[\s,]+/)
  end
end
