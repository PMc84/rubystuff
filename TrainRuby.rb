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
seat1 = [1,"window",7]
seat2 = [2,"middle",8]
seat3 = [3,"aisle",9]
seat4 = [4,"aisle",10]
seat5 = [5,"middle",11]
seat6 = [6,"window",12]
seat7 = [7,"window",1]
seat8 = [8,"middle",2]
seat9 = [9,"aisle",3]
seat10 = [10,"aisle",4]
seat11 = [11,"middle",5]
seat12 = [12,"window",6]
# set loop count to 0
count = 0

# prompt user for seat number and assign this to variable seat - note .to_i sets the input as an integer input
puts "Please provide seat number to check: "
seat = gets.chomp.to_i

# duplicate the seat variable to check_seat in order to manipulate
check_seat = seat

# subtract 12 from the seat number until we are less than or equal too 12 - this tells us which array to use to pull out intial states
while check_seat > 12
  check_seat -= 12
  count += 1
end

# create variable that we can add to the seat opposite to get the new seat opposite 
add_to_array = count * 12

# this is prob the wrong way to do this - but check the check_seat variable against the seat arrays one by one and print the seat position
if check_seat == 1
    opposite_seat = seat1[2] + add_to_array
    puts "Seat number #{seat} is a #{seat1[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 2
    opposite_seat = seat2[2] + add_to_array
    puts "Seat number #{seat} is a #{seat2[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 3
    opposite_seat = seat3[2] + add_to_array
    puts "Seat number #{seat} is a #{seat3[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 4
    opposite_seat = seat4[2] + add_to_array
    puts "Seat number #{seat} is a #{seat4[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 5
    opposite_seat = seat5[2] + add_to_array
    puts "Seat number #{seat} is a #{seat5[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 6
    opposite_seat = seat6[2] + add_to_array
    puts "Seat number #{seat} is a #{seat6[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 7
    opposite_seat = seat7[2] + add_to_array
    puts "Seat number #{seat} is a #{seat7[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 8
    opposite_seat = seat8[2] + add_to_array
    puts "Seat number #{seat} is a #{seat8[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 9
    opposite_seat = seat9[2] + add_to_array
    puts "Seat number #{seat} is a #{seat9[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 10
    opposite_seat = seat10[2] + add_to_array
    puts "Seat number #{seat} is a #{seat10[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 11
    opposite_seat = seat11[2] + add_to_array
    puts "Seat number #{seat} is a #{seat11[1]} seat and the seat opposite is #{opposite_seat}"
elsif check_seat == 12
    opposite_seat = seat12[2] + add_to_array
    puts "Seat number #{seat} is a #{seat12[1]} seat and the seat opposite is #{opposite_seat}"
else
    puts "Entry out of range"
end