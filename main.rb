$palindromes = Array.new()

def isPalindrome(str)

    str.downcase!
    str.gsub!(/[\W_]/, "")

    if str.reverse == str && str.length > 2 then $palindromes.push(str) end

end

def scan (name)

    $statsStart = Time.now()
    $statsLines = 0
    File.readlines(name, chomp: true).each do |l| 
        $statsLines+=1 
        isPalindrome(l) 
    end

    puts "\nPalindromes in #{ARGV[0]} [#{$palindromes.count()}]:\n#{$palindromes.join(", ")}"
    
    $statsEnd = Time.now()
    $statsTot = $statsEnd - $statsStart

    puts "\nLaladome processed #{$statsLines} lines in #{$statsTot} seconds!\n\n"

end

puts "\nLaladome (c) 2024 Zarashigal\nScanning for palindromes in #{ARGV[0]}..."
scan ARGV[0]
