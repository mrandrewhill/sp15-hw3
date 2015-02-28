class Foobar

def self.baz(array)
	str_ary = array
	int_array = str_ary.map(&:to_i)
	new_array = int_array.map { |a| 2+a }  #iterates over the array and adds 2 to each number
	nodups_array = new_array.select { |num|  num.even?  }  #creates new array and puts only even numbers in it
	nodups_array.delete_if {|x| x > 10} #delete numbers that are greater than 10
	nodups_array.inject{|sum,x| sum + x }  #sum the elements left in array
	
end

end
