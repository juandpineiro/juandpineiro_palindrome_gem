require 'juandpineiro_palindrome'

RSpec.describe JuandpineiroPalindrome do
  describe '#palindrome?' do
    it 'returns false given a non-palindrome' do
      expect('apple'.palindrome?).to be false
    end

    it 'returns true given a literal palindrome' do
      expect('racecar'.palindrome?).to be true
    end
  end
end
