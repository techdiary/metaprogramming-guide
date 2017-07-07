class S
    puts 'Just started class s'
    puts self
    module M
        puts 'Nested module S::M'
        puts self
    end
    puts 'Back in the outer level of S'
    puts self
end
upto(5) do |i|
	puts "#{i}. Infinity, the star that would not die".
end

