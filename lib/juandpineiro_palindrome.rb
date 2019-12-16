require "juandpineiro_palindrome/version"

module JuandpineiroPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    # Ignores anything that is not a letter or number
    to_s.scan(/[a-z\d]/i).join.downcase
  end
end

class String
  include JuandpineiroPalindrome
end

class Integer
  include JuandpineiroPalindrome
end
