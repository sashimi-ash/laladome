# Initialize Array
$palindromes = Array.new()

# Palindrome checker uwu
def isPalindrome(str)

    # Downcase, remove spaceesss...
    checkstr = str.downcase
    checkstr.gsub!(/[\W_]/, "")

    # If the reverse of this string is the same, it is a palindrome!
    if checkstr.reverse == checkstr && checkstr.length > 2 then $palindromes.push(str) end

end

# Scan (file)
def scan (name)

    # Statistics...
    $statsStart = Time.now()
    $statsLines = 0

    # Start scanning the file line by line!
    File.readlines(name, chomp: true).each do |l| 
        
        # Add to statistic linecount,
        $statsLines+=1 

        # Is it a palindrome? Add to the palindrome array!
        isPalindrome(l) 

    end

    # Output informationnss
    puts "\nPalindromes in #{ARGV[0]} [#{$palindromes.count}]:\n#{$palindromes.join(", ")}"
    
    # Statistics...
    $statsEnd = Time.now()
    $statsTot = $statsEnd - $statsStart

    # Statistics 2 de statening! xD
    puts "\nLaladome processed #{$statsLines} lines in #{$statsTot} seconds and has found #{$palindromes.count} palindromes in the file!\n\n"

end

# Start scanning!
puts "\nLaladome (c) 2024 Zarashigal\nScanning for palindromes in #{ARGV[0]}..."
scan ARGV[0]
