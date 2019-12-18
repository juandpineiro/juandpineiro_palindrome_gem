require 'juandpineiro_palindrome'

describe JuandpineiroPalindrome do
  describe '#palindrome?' do
    context 'returns true' do
      it 'given a string palindrome' do
        expect('racecar'.palindrome?).to be true
      end

      it 'given a mixed-case string palindrome' do
        expect('RaceCar'.palindrome?).to be true
      end

      it 'given a string palindrome with punctuation' do
        expect("Madam, I'm Adam.".palindrome?).to be true
      end

      it 'given an integer palindrome' do
        expect(12321.palindrome?).to be true
      end
    end

    context 'returns false' do
      it 'given a string non-palindrome' do
        expect('apple'.palindrome?).to be false
      end

      it 'given an empty string' do
        expect(''.palindrome?).to be false
      end

      it 'given a whitespace string' do
        expect("  \n  \t  \r  ".palindrome?).to be false
      end

      it 'given an integer non-palindrome' do
        expect(12345.palindrome?).to be false
      end
    end
  end
end
