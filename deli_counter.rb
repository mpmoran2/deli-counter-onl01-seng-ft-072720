katz_deli = []

#line time
def line(x)
  in_line = []
  if x.length == 0
    puts "The line is currently empty."
  else
    x.each.with_index(1) do |name, index|
      in_line.push("#{index}. #{name}")
    end
    puts "The line is currently: #{line_array.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
	katz_deli.push(name)
	place = katz_deli.index(name) + 1
	puts "Welcome, #{name}. You are number #{place} in line."
end

def now_serving(katz_deli)
	if katz_deli.empty?
		puts "There is nobody waiting to be served!"
	else
		up_next = katz_deli[0]
		puts "Currently serving #{up_next}."
		katz_deli.shift
	end
end