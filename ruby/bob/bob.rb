module BookKeeping
  VERSION = 2
end

class Bob
  def self.hey(remark)
    return 'Whoa, chill out!' if remark.include?('!')
    return 'Whoa, chill out!' if remark == remark.upcase
    'Whatever.'
  end
end
