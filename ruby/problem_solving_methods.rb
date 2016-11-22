# RELEASE 0

array = [42, 79, 61, 18, 47, 2]

# def search_array(array, num)
#     index = nil
#     counter = 0
# 
#     while counter < array.length 
        # array.each{|element| element == num  }
#     end
# 
#     return counter
# end


def search_array(array, number)
    idx = 0

    while idx < array.length 
        if array[idx] == number
            return idx
        end
        
        idx +=1
    end
end

p search_array(array, 47)


# RELEASE 1

def fib(num)
 array = [0]
 num.times do |index|
   if index == 0 
       array[index] = 0
   elsif index == 1
       array[index] = 1
   else
     array[index] = array[index -1] + array[index -2]
   end
 end
 return array[num -1]
end

p fib(100)


# RELEASE 2

# Implementing BUBBLE SORT - first attempt
# 
# 1. taking an array of numbers, order them smallest to largest
# 2. take the first two numbers and define the largest the number
    # 2a. if theyre just 2 numbers in the array and in ascending order, do not swap and end bubble sort
# 3. take idx location 1 and 2, and define largest number, moving larger number towards back of the array. 
# 4. continue process until all numbers in the array ar in ascending order.
# 5. break if no numbers need to be swapped.

# array [4, 2, 6, 5, 10]

# def bubble_sort(array)
#       spot_1 = 0
#       spot_2 = 1
#       temp_value = 
#       while spot_2 < array.length
#             if array[spot_1] < array[spot_2]
#                 spot_2 += 1
#                 spot_1 += 1
#             elsif 
#                 #array[spot_1] = array[spot2]
#                 #(array[spot_1] = array[spot2]) < spot_2 + 1 *how to get this in proper     ruby code*
   
#                 temp_value = array[spot_2]
#                 array[spot_1] = array[spot_2]
#           array[spot_1] =  temp_value
#           spot_1 += 1
#           spot_2 += 1
#         end
#     end
#     return array
# end
# BUBBLE SORT - second attempt
def bubble_sort (array)
    n = array.length

    loop do
        swapped = false

        (n -1).times do |idx|
            if array[idx] > array[idx + 1]
                array[idx], array[idx + 1] = array[idx + 1], array[idx]
                swapped = true
            end
        end

        break if not swapped
    end
    return array
end


array = [4, 101, 2, 5, 100, 1, 6, 7, 18, 10,]
bubble_sort(array)