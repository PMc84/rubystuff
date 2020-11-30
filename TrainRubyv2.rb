# Train Problem Ruby Solution
# +-----+-----+
# |1   7|13  Window
# |2   8|14  Middle
# |3   9|15  Aisle
#
#
# |4  10|...
# |5  11|
# |6  12|
# +-----+-----+
# Given a seat number, find:
# - Window, Middle, or Aisle
# - Seat number across the compartment (e.g. 2 <-> 8)


# setting each of the seat arrays - seat number, seat position, seat number opposite
seat_array = [[1,"window",7],[2,"middle",8],[3,"aisle",9],[4,"aisle",10],[5,"middle",11],[6,"window",12],[7,"window",1],[8,"middle",2],[9,"aisle",3],[10,"aisle",4],[11,"middle",5],[12,"window",6]]
# set loop count to 0
count = 0

# prompt user for seat number and assign this to variable seat - note .to_i sets the input as an integer input
puts "Please provide seat number to check: "
original_seat = gets.chomp.to_i

# duplicate the seat variable to check_seat in order to manipulate
check_seat = original_seat

# subtract 12 from the seat number until we are less than or equal too 12 - this tells us which array to use to pull out intial states
while check_seat > 12
  check_seat -= 12
  count += 1
end

# create variable that we can add to the seat opposite to get the new seat opposite 
add_to_array = count * 12


# module to output seat details
def seat_output(seatNumber, seat_array, add_to_array, original_seat)
    seatNumber -= 1
	opposite_seat = seat_array[seatNumber][2] + add_to_array
	puts "Seat number #{original_seat} is a #{seat_array[seatNumber][1]} seat and the seat opposite is #{opposite_seat}"
end


# this is prob the wrong way to do this - but check the check_seat variable against the seat arrays one by one and print the seat position
case check_seat 
	when 1 then seat_output(1, seat_array, add_to_array, original_seat)
	when 2 then seat_output(2, seat_array, add_to_array, original_seat)
	when 3 then seat_output(3, seat_array, add_to_array, original_seat)
	when 4 then seat_output(4, seat_array, add_to_array, original_seat)
	when 5 then seat_output(5, seat_array, add_to_array, original_seat)
	when 6 then seat_output(6, seat_array, add_to_array, original_seat)
	when 7 then seat_output(7, seat_array, add_to_array, original_seat)
	when 8 then seat_output(8, seat_array, add_to_array, original_seat)
	when 9 then seat_output(9, seat_array, add_to_array, original_seat)
	when 10 then seat_output(10, seat_array, add_to_array, original_seat)
	when 11 then seat_output(11, seat_array, add_to_array, original_seat)
	when 12 then seat_output(12, seat_array, add_to_array, original_seat)
	else puts "Entry out of range"
end